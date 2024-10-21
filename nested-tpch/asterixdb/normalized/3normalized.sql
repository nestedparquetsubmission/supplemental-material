-- TPC-H Query 3
select
        o.`r_nations-n_customers-c_orders-o_orderkey` as a,
        sum(l.`r_nations-n_customers-c_orders-o_lineitems-l_extendedprice` * (1 - l.`r_nations-n_customers-c_orders-o_lineitems-l_discount`)) as b,
        o.`r_nations-n_customers-c_orders-o_orderdate` as c,
        o.`r_nations-n_customers-c_orders-o_shippriority` as d
from
        Customer c inner join Orders o on c._sk = o._psk2 inner join Lineitem l on o._sk = l._psk3
where
        c.`r_nations-n_customers-c_mktsegment` = 'BUILDING'
        and o.`r_nations-n_customers-c_orders-o_orderdate` < datetime('1995-03-15T00:00:00')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_shipdate` > datetime('1995-03-15T00:00:00')
group by
        o.`r_nations-n_customers-c_orders-o_orderkey`,
        o.`r_nations-n_customers-c_orders-o_orderdate`,
        o.`r_nations-n_customers-c_orders-o_shippriority`
order by
        b desc,
        o.`r_nations-n_customers-c_orders-o_orderdate`
limit
        10;