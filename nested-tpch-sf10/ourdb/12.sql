-- TPC-H Query 12
select
       "c_orders.list.element.o_lineitems.list.element.l_shipmode",
        sum(case
                when"c_orders.list.element.o_orderpriority" = '1-URGENT'
                        or"c_orders.list.element.o_orderpriority" = '2-HIGH'
                        then 1
                else 0
        end) as high_line_count,
        sum(case
                when"c_orders.list.element.o_orderpriority" <> '1-URGENT'
                        and"c_orders.list.element.o_orderpriority" <> '2-HIGH'
                        then 1
                else 0
        end) as low_line_count
from
        ourdb.parquetview('nestedcustomer.parquet')
where
        "c_orders.list.element.o_lineitems.list.element.l_shipmode" in ('MAIL', 'SHIP')
        and"c_orders.list.element.o_lineitems.list.element.l_commitdate" <"c_orders.list.element.o_lineitems.list.element.l_receiptdate"
        and"c_orders.list.element.o_lineitems.list.element.l_shipdate" <"c_orders.list.element.o_lineitems.list.element.l_commitdate"
        and"c_orders.list.element.o_lineitems.list.element.l_receiptdate" >= date '1994-01-01'
        and"c_orders.list.element.o_lineitems.list.element.l_receiptdate" < date '1994-01-01' + interval '1' year
group by
       "c_orders.list.element.o_lineitems.list.element.l_shipmode"
order by
       "c_orders.list.element.o_lineitems.list.element.l_shipmode"
