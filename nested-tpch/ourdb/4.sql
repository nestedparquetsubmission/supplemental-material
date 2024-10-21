-- TPC-H Query 4
select
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority",
        count(*) as order_count
from
        (
                select
                        distinct "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderkey", "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority"
                from
                        ourdb.parquetview('nestedregion.parquet')
                where
                        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate" >= date '1993-07-01'
                        and  "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate" < date '1993-07-01' + interval '3' month
                        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_commitdate" < "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_receiptdate"
        )
group by
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority"
order by
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderpriority"
