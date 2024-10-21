-- TPC-H Query 1
select
        "l_returnflag",
        "l_linestatus",
        sum("l_quantity") as sum_qty,
        sum("l_extendedprice") as sum_base_price,
        sum("l_extendedprice" * (1 - "l_discount")) as sum_disc_price,
        sum("l_extendedprice" * (1 - "l_discount") * (1 + "l_tax")) as sum_charge,
        avg("l_quantity") as avg_qty,
        avg("l_extendedprice") as avg_price,
        avg("l_discount") as avg_disc,
        count(*) as count_order
from
        hive.tpch.dataset r cross join unnest(r_nations) n cross join unnest(n_customers) c cross join unnest(c_orders) o cross join unnest(o_lineitems) l
where
        "l_shipdate" <= date '1998-12-01' - interval '90' day
group by
        "l_returnflag",
        "l_linestatus"
order by
        "l_returnflag",
        "l_linestatus";
