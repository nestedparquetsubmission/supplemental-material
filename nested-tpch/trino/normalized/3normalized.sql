-- TPC-H Query 3
select
        "r_nations-n_customers-c_orders-o_orderkey",
        sum("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice" * (1 - "r_nations-n_customers-c_orders-o_lineitems-l_discount")) as revenue,
        "r_nations-n_customers-c_orders-o_orderdate",
        "r_nations-n_customers-c_orders-o_shippriority"
from
        hive.tpch.t4 l inner join hive.tpch.t3 o on o._sk = l._psk3 inner join hive.tpch.t2 c on c._sk = o._psk2
where
        "r_nations-n_customers-c_mktsegment" = 'BUILDING'
        and "r_nations-n_customers-c_orders-o_orderdate" < date '1995-03-15'
        and "r_nations-n_customers-c_orders-o_lineitems-l_shipdate" > date '1995-03-15'
group by
        "r_nations-n_customers-c_orders-o_orderkey",
        "r_nations-n_customers-c_orders-o_orderdate",
        "r_nations-n_customers-c_orders-o_shippriority"
order by
        revenue desc,
        "r_nations-n_customers-c_orders-o_orderdate"
limit
        10;