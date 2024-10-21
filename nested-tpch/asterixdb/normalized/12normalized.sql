-- TPC-H Query 12
select
       l.`r_nations-n_customers-c_orders-o_lineitems-l_shipmode` as a,
        sum(case
                when o.`r_nations-n_customers-c_orders-o_orderpriority` = '1-URGENT'
                        or o.`r_nations-n_customers-c_orders-o_orderpriority` = '2-HIGH'
                        then 1
                else 0
        end) as high_line_count,
        sum(case
                when o.`r_nations-n_customers-c_orders-o_orderpriority` <> '1-URGENT'
                        and o.`r_nations-n_customers-c_orders-o_orderpriority` <> '2-HIGH'
                        then 1
                else 0
        end) as low_line_count
from
        Orders o
                inner join Lineitem l on o._sk = l._psk3
where
        l.`r_nations-n_customers-c_orders-o_lineitems-l_shipmode` in ('MAIL', 'SHIP')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_commitdate` < l.`r_nations-n_customers-c_orders-o_lineitems-l_receiptdate`
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_shipdate` < l.`r_nations-n_customers-c_orders-o_lineitems-l_commitdate`
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_receiptdate` >= datetime('1994-01-01T00:00:00')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_receiptdate` < datetime('1994-01-01T00:00:00') + duration('P1Y')
group by
       l.`r_nations-n_customers-c_orders-o_lineitems-l_shipmode`
order by
       l.`r_nations-n_customers-c_orders-o_lineitems-l_shipmode`;
