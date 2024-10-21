-- TPC-H Query 3
select
        "c_orders-o_orderkey",
        sum("c_orders-o_lineitems-l_extendedprice" * (1 - "c_orders-o_lineitems-l_discount")) as revenue,
        "c_orders-o_orderdate",
        "c_orders-o_shippriority"
from
        hive.tpch10.t2 l inner join hive.tpch10.t1 o on o._sk = l._psk1 inner join hive.tpch10.t0 c on c._sk = o._psk0
where
        "c_mktsegment" = 'BUILDING'
        and "c_orders-o_orderdate" < date '1995-03-15'
        and "c_orders-o_lineitems-l_shipdate" > date '1995-03-15'
group by
        "c_orders-o_orderkey",
        "c_orders-o_orderdate",
        "c_orders-o_shippriority"
order by
        revenue desc,
        "c_orders-o_orderdate"
limit
        10;
