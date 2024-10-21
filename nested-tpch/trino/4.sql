-- TPC-H Query 4
select
        o_orderpriority as a,
        count(*) as b
from
(
        select distinct o_orderkey, o_orderpriority
        from hive.tpch.dataset cross join unnest(r_nations) cross join unnest(n_customers) cross join unnest(c_orders) cross join unnest(o_lineitems) l
        where o_orderdate >= date '1993-07-01'
        and o_orderdate < date '1993-07-01' + interval '3' month
        and l.l_commitdate < l.l_receiptdate
) as i
group by
        o_orderpriority
order by
        o_orderpriority;
