-- TPC-H Query 6
select
        sum(l.`r_nations-n_customers-c_orders-o_lineitems-l_extendedprice` * l.`r_nations-n_customers-c_orders-o_lineitems-l_discount`) as revenue
from
        Lineitem l
where
        l.`r_nations-n_customers-c_orders-o_lineitems-l_shipdate` >= datetime('1994-01-01T00:00:00')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_shipdate` < datetime('1994-01-01T00:00:00') + duration('P1Y')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_discount` between 0.06 - 0.01 and 0.06 + 0.01
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_quantity` < 24;