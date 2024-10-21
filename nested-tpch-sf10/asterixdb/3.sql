select
        o.o_orderkey as a,
        sum(l.l_extendedprice * (1 - l.l_discount)) as b,
        o.o_orderdate as c,
        o.o_shippriority as d
from
        tpch10 as t unnest t.c_orders as o unnest o.o_lineitems as l
where
        t.c_mktsegment = 'BUILDING'
        and o.o_orderdate < date('1995-03-15')
        and l.l_shipdate > date('1995-03-15')
group by
        o.o_orderkey,
        o.o_orderdate,
        o.o_shippriority
order by
        b desc,
        o.o_orderdate
limit
        10;
