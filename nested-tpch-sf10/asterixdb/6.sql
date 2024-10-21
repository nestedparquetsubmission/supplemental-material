-- TPC-H Query 6
select
        sum(l.l_extendedprice * l.l_discount) as revenue
from
        tpch10 as t unnest t.c_orders as o unnest o.o_lineitems as l
where
        l.l_shipdate >= date('1994-01-01')
        and l.l_shipdate < date('1994-01-01') + duration('P1Y')
        and l.l_discount between 0.05 and 0.07
        and l.l_quantity < 24;