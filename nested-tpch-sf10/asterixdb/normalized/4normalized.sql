-- TPC-H Query 4
select
        `c_orders-o_orderpriority` as a,
        count(*) as b
from
        (
                select
                        distinct o.`c_orders-o_orderkey`, o.`c_orders-o_orderpriority`
                from
                        orders o inner join lineitem l on o._sk = l._psk1
                where
                        o.`c_orders-o_orderdate` >= date('1993-07-01')
                        and  o.`c_orders-o_orderdate` < date('1993-07-01') + duration('P3M')
                        and l.`c_orders-o_lineitems-l_commitdate` < l.`c_orders-o_lineitems-l_receiptdate`
        ) as i
group by
        `c_orders-o_orderpriority`
order by
        `c_orders-o_orderpriority`;
