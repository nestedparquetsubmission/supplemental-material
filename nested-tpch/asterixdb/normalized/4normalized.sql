-- TPC-H Query 4
select
        `r_nations-n_customers-c_orders-o_orderpriority` as a,
        count(*) as b
from
        (
                select
                        distinct o.`r_nations-n_customers-c_orders-o_orderkey`, o.`r_nations-n_customers-c_orders-o_orderpriority`
                from
                        Orders o inner join Lineitem l on o._sk = l._psk3
                where
                        o.`r_nations-n_customers-c_orders-o_orderdate` >= datetime('1993-07-01T00:00:00')
                        and  o.`r_nations-n_customers-c_orders-o_orderdate` < datetime('1993-07-01T00:00:00') + duration('P3M')
                        and l.`r_nations-n_customers-c_orders-o_lineitems-l_commitdate` < l.`r_nations-n_customers-c_orders-o_lineitems-l_receiptdate`
        ) as i
group by
        `r_nations-n_customers-c_orders-o_orderpriority`
order by
        `r_nations-n_customers-c_orders-o_orderpriority`;
