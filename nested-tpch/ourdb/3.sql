-- TPC-H Query 3
select
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderkey",
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount")) as revenue,
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_shippriority"
from
        ourdb.parquetview('nestedregion.parquet')
where
        "r_nations.list.element.n_customers.list.element.c_mktsegment" = 'BUILDING'
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate" < date '1995-03-15'
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipdate" > date '1995-03-15'
group by
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderkey",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_shippriority"
order by
        revenue desc,
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate"
limit
        10
