-- TPC-H Query 1
select
        `c_orders-o_lineitems-l_returnflag` as a,
        `c_orders-o_lineitems-l_linestatus` as b,
        sum(`c_orders-o_lineitems-l_quantity`) as c,
        sum(`c_orders-o_lineitems-l_extendedprice`) as d,
        sum(`c_orders-o_lineitems-l_extendedprice` * (1 - `c_orders-o_lineitems-l_discount`)) as e,
        sum(`c_orders-o_lineitems-l_extendedprice` * (1 - `c_orders-o_lineitems-l_discount`) * (1 + `c_orders-o_lineitems-l_tax`)) as f,
        avg(`c_orders-o_lineitems-l_quantity`) as g,
        avg(`c_orders-o_lineitems-l_extendedprice`) as h,
        avg(`c_orders-o_lineitems-l_discount`) as i,
        count(*) as j
from
        Lineitem
where
        `c_orders-o_lineitems-l_shipdate` <= datetime('1998-12-01T00:00:00') - duration('P90D')
group by
        `c_orders-o_lineitems-l_returnflag`,
        `c_orders-o_lineitems-l_linestatus`
order by
        `c_orders-o_lineitems-l_returnflag`,
        `c_orders-o_lineitems-l_linestatus`
;