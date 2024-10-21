-- TPC-H Query 4
select
        o_orderpriority as a,
        count(*) as b
from (
    select distinct o.o_orderkey, o.o_orderpriority
    from tpch10 as t unnest t.c_orders as o unnest o.o_lineitems as l
    where  o.o_orderdate >= date('1993-07-01')
        and  o.o_orderdate < date('1993-07-01') + duration('P3M')
        and l.l_commitdate < l.l_receiptdate
) as i
group by
        o_orderpriority
order by
        o_orderpriority;