-- TPC-H Query 4
select
        o_orderpriority as a,
        count(*) as b
from
(
    select distinct o.o_orderkey, o.o_orderpriority
    from Tpch as t unnest t.r_nations as n unnest n.n_customers as c unnest c.c_orders as o unnest o.o_lineitems as l
    where o.o_orderdate >= datetime('1993-07-01T00:00:00')
        and o.o_orderdate < datetime('1993-07-01T00:00:00') + duration('P3M')
        and l.l_commitdate < l.l_receiptdate
) as i
group by
        o_orderpriority
order by
        o_orderpriority;