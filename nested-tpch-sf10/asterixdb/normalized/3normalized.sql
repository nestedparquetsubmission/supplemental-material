-- TPC-H Query 3
select
        o.`c_orders-o_orderkey` as a,
        sum(l.`c_orders-o_lineitems-l_extendedprice` * (1 - l.`c_orders-o_lineitems-l_discount`)) as b,
        o.`c_orders-o_orderdate` as c,
        o.`c_orders-o_shippriority` as d
from
        customer c inner join orders o on c._sk = o._psk0 inner join lineitem l on o._sk = l._psk1
where
        c.`c_mktsegment` = 'BUILDING'
        and o.`c_orders-o_orderdate` < date('1995-03-15')
        and l.`c_orders-o_lineitems-l_shipdate` > date('1995-03-15')
group by
        o.`c_orders-o_orderkey`,
        o.`c_orders-o_orderdate`,
        o.`c_orders-o_shippriority`
order by
        b desc,
        o.`c_orders-o_orderdate`
limit
        10;