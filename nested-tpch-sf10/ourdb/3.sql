-- TPC-H Query 3
select
        "c_orders.list.element.o_orderkey",
        sum("c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "c_orders.list.element.o_lineitems.list.element.l_discount")) as revenue,
        "c_orders.list.element.o_orderdate",
        "c_orders.list.element.o_shippriority"
from
        ourdb.parquetview('nestedcustomer.parquet')
where
        "c_mktsegment" = 'BUILDING'
        and "c_orders.list.element.o_orderdate" < date '1995-03-15'
        and "c_orders.list.element.o_lineitems.list.element.l_shipdate" > date '1995-03-15'
group by
        "c_orders.list.element.o_orderkey",
        "c_orders.list.element.o_orderdate",
        "c_orders.list.element.o_shippriority"
order by
        revenue desc,
        "c_orders.list.element.o_orderdate"
limit
        10
