-- TPC-H Query 4
select
        o_orderpriority,
        count(*) as order_count
from
(
        select distinct o_orderkey, o_orderpriority
        from hive.tpch10.dataset cross join unnest(c_orders) ol cross join unnest(o_lineitems) l
        where o_orderdate >= date '1993-07-01'
        and o_orderdate < date '1993-07-01' + interval '3' month
        and l.l_commitdate < l.l_receiptdate
) as i
group by
        o_orderpriority
order by
        o_orderpriority;
