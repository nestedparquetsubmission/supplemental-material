-- TPC-H Query 1
select
        "r_nations-n_customers-c_orders-o_lineitems-l_returnflag",
        "r_nations-n_customers-c_orders-o_lineitems-l_linestatus",
        sum("r_nations-n_customers-c_orders-o_lineitems-l_quantity") as sum_qty,
        sum("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice") as sum_base_price,
        sum("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice" * (1 - "r_nations-n_customers-c_orders-o_lineitems-l_discount")) as sum_disc_price,
        sum("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice" * (1 - "r_nations-n_customers-c_orders-o_lineitems-l_discount") * (1 + "r_nations-n_customers-c_orders-o_lineitems-l_tax")) as sum_charge,
        avg("r_nations-n_customers-c_orders-o_lineitems-l_quantity") as avg_qty,
        avg("r_nations-n_customers-c_orders-o_lineitems-l_extendedprice") as avg_price,
        avg("r_nations-n_customers-c_orders-o_lineitems-l_discount") as avg_disc,
        count(*) as count_order
from
        hive.tpch.t4
where
        "r_nations-n_customers-c_orders-o_lineitems-l_shipdate" <= date '1998-12-01' - interval '90' day
group by
        "r_nations-n_customers-c_orders-o_lineitems-l_returnflag",
        "r_nations-n_customers-c_orders-o_lineitems-l_linestatus"
order by
        "r_nations-n_customers-c_orders-o_lineitems-l_returnflag",
        "r_nations-n_customers-c_orders-o_lineitems-l_linestatus";
