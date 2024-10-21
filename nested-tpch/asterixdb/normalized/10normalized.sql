-- TPC-H Query 10
select
        c.`r_nations-n_customers-c_custkey` as a,
        c.`r_nations-n_customers-c_name` as b,
        sum(l.`r_nations-n_customers-c_orders-o_lineitems-l_extendedprice` * (1 - l.`r_nations-n_customers-c_orders-o_lineitems-l_discount`)) as c,
        c.`r_nations-n_customers-c_acctbal` as d,
        n.`r_nations-n_name` as e,
        c.`r_nations-n_customers-c_address` as f,
        c.`r_nations-n_customers-c_phone` as g,
        c.`r_nations-n_customers-c_comment` as h
from
        Nation n
                inner join Customer c on n._sk = c._psk1
                inner join Orders o on c._sk = o._psk2
                inner join Lineitem l on o._sk = l._psk3
where
        o.`r_nations-n_customers-c_orders-o_orderdate` >= datetime('1993-10-01T00:00:00')
        and o.`r_nations-n_customers-c_orders-o_orderdate` < datetime('1993-10-01T00:00:00') + duration('P3M')
        and l.`r_nations-n_customers-c_orders-o_lineitems-l_returnflag` = 'R'
group by
        c.`r_nations-n_customers-c_custkey`,
        c.`r_nations-n_customers-c_name`,
        c.`r_nations-n_customers-c_acctbal`,
        c.`r_nations-n_customers-c_phone`,
        n.`r_nations-n_name`,
        c.`r_nations-n_customers-c_address`,
        c.`r_nations-n_customers-c_comment`
order by
        c desc
limit
        20;
