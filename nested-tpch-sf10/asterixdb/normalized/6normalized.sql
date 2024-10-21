-- TPC-H Query 6
select
        sum(l.`c_orders-o_lineitems-l_extendedprice` * l.`c_orders-o_lineitems-l_discount`) as revenue
from
        lineitem l
where
        l.`c_orders-o_lineitems-l_shipdate` >= date('1994-01-01')
        and l.`c_orders-o_lineitems-l_shipdate` < date('1994-01-01') + duration('P1Y')
        and l.`c_orders-o_lineitems-l_discount` between 0.05 and 0.07
        and l.`c_orders-o_lineitems-l_quantity` < 24;