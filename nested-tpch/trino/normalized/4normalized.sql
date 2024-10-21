-- TPC-H Query 4
select
        "r_nations-n_customers-c_orders-o_orderpriority",
        count(*) as order_count
from
        (
                select
                        distinct "r_nations-n_customers-c_orders-o_orderkey", "r_nations-n_customers-c_orders-o_orderpriority"
                from
                        hive.tpch.t4 l inner join hive.tpch.t3 o on o._sk = l._psk3
                where
                        "r_nations-n_customers-c_orders-o_orderdate" >= date '1993-07-01'
                        and  "r_nations-n_customers-c_orders-o_orderdate" < date '1993-07-01' + interval '3' month
                        and "r_nations-n_customers-c_orders-o_lineitems-l_commitdate" < "r_nations-n_customers-c_orders-o_lineitems-l_receiptdate"
        )
group by
        "r_nations-n_customers-c_orders-o_orderpriority"
order by
        "r_nations-n_customers-c_orders-o_orderpriority";
