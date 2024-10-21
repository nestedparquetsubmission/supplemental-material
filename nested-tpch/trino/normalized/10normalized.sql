-- TPC-H Query 10
select
        "r_nations-n_customers-c_custkey",
        "r_nations-n_customers-c_name",
        sum("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice" * (1 - "r_nations-n_customers-c_orders-o_lineitems-l_discount")) as revenue,
        "r_nations-n_customers-c_acctbal",
        "r_nations-n_name",
        "r_nations-n_customers-c_address",
        "r_nations-n_customers-c_phone",
        "r_nations-n_customers-c_comment"
from
        hive.tpch.t4 l
                inner join hive.tpch.t3 o on o._sk = l._psk3
                inner join hive.tpch.t2 c on c._sk = o._psk2
                inner join hive.tpch.t1 n on n._sk = c._psk1
where
        "r_nations-n_customers-c_orders-o_orderdate" >= date '1993-10-01'
        and "r_nations-n_customers-c_orders-o_orderdate" < date '1993-10-01' + interval '3' month
        and "r_nations-n_customers-c_orders-o_lineitems-l_returnflag" = 'R'
group by
        "r_nations-n_customers-c_custkey",
        "r_nations-n_customers-c_name",
        "r_nations-n_customers-c_acctbal",
        "r_nations-n_customers-c_phone",
        "r_nations-n_name",
        "r_nations-n_customers-c_address",
        "r_nations-n_customers-c_comment"
order by
        revenue desc
limit
        20;
