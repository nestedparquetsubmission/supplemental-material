-- TPC-H Query 6
select
        sum(l.l_extendedprice * l.l_discount) as revenue
from
        Tpch as t unnest t.r_nations as n unnest n.n_customers as c unnest c.c_orders as o unnest o.o_lineitems as l
where
        l.l_shipdate >= datetime('1994-01-01T00:00:00')
        and l.l_shipdate < datetime('1994-01-01T00:00:00') + duration('P1Y')
        and l.l_discount between 0.05 and 0.067
        and l.l_quantity < 24;