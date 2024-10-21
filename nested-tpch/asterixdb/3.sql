select
        o.o_orderkey as a,
        sum(l.l_extendedprice * (1 - l.l_discount)) as b,
        o.o_orderdate as c,
        o.o_shippriority as d
from
        Tpch as t unnest t.r_nations as n unnest n.n_customers as c unnest c.c_orders as o unnest o.o_lineitems as l
where
        c.c_mktsegment = 'BUILDING'
        and o.o_orderdate < datetime('1995-03-15T00:00:00')
        and l.l_shipdate > datetime('1995-03-15T00:00:00')
group by
        o.o_orderkey,
        o.o_orderdate,
        o.o_shippriority
order by
        b desc,
        o.o_orderdate
limit
        10;
