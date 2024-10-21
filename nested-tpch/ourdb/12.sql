-- TPC-H Query 12
select
       "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipmode",
        sum(case
                when"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority" = '1-URGENT'
                        or"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority" = '2-HIGH'
                        then 1
                else 0
        end) as high_line_count,
        sum(case
                when"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority" <> '1-URGENT'
                        and"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority" <> '2-HIGH'
                        then 1
                else 0
        end) as low_line_count
from
        ourdb.parquetview('nestedregion.parquet')
where
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipmode" in ('MAIL', 'SHIP')
        and"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_commitdate" <"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_receiptdate"
        and"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipdate" <"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_commitdate"
        and"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_receiptdate" >= date '1994-01-01'
        and"r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_receiptdate" < date '1994-01-01' + interval '1' year
group by
       "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipmode"
order by
       "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipmode"
