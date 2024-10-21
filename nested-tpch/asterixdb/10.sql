-- TPC-H Query 10
select
        c.c_custkey as a,
        c.c_name as b,
        sum(l.l_extendedprice * (1 - l.l_discount)) as c,
        c.c_acctbal as d,
        n.n_name as e,
        c.c_address as f,
        c.c_phone as g,
        c.c_comment as h
from
        Tpch as t unnest t.r_nations as n unnest n.n_customers as c unnest c.c_orders as o unnest o.o_lineitems as l
where
        o.o_orderdate >= datetime('1993-10-01T00:00:00')
        and o.o_orderdate < datetime('1993-10-01T00:00:00') + duration('P3M')
        and l.l_returnflag = 'R'
group by
        c.c_custkey,
        c.c_name,
        c.c_acctbal,
        c.c_phone,
        n.n_name,
        c.c_address,
        c.c_comment
order by
        c desc
limit
        20;
