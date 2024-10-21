-- TPC-H Query 4
select
        "c_orders.list.element.o_orderpriority",
        count(*) as order_count
from
        (
                select
                        distinct "c_orders.list.element.o_orderkey", "c_orders.list.element.o_orderpriority"
                from
                        ourdb.parquetview('nestedcustomer.parquet')
                where
                        "c_orders.list.element.o_orderdate" >= date '1993-07-01'
                        and  "c_orders.list.element.o_orderdate" < date '1993-07-01' + interval '3' month
                        and "c_orders.list.element.o_lineitems.list.element.l_commitdate" < "c_orders.list.element.o_lineitems.list.element.l_receiptdate"
        )
group by
        "c_orders.list.element.o_orderpriority"
order by
        "c_orders.list.element.o_orderpriority"
