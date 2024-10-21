-- TPC-H Query 3
select
        l_orderkey,
        sum(l_extendedprice * (1 - l_discount)) as revenue,
        o_orderdate,
        o_shippriority
from
        hive.tpch.dataset cross join unnest(r_nations) cross join unnest(n_customers) cross join unnest(c_orders) cross join unnest(o_lineitems)
where
        c_mktsegment = 'BUILDING'
        and o_orderdate < date '1995-03-15'
        and l_shipdate > date '1995-03-15'
group by
        l_orderkey,
        o_orderdate,
        o_shippriority
order by
        revenue desc,
        o_orderdate
limit
        10;
