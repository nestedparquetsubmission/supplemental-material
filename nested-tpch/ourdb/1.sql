-- TPC-H Query 1
select
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_linestatus",
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_quantity") as sum_qty,
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice") as sum_base_price,
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount")) as sum_disc_price,
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount") * (1 + "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_tax")) as sum_charge,
        avg("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_quantity") as avg_qty,
        avg("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice") as avg_price,
        avg("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount") as avg_disc,
        count(*) as count_order
from
        ourdb.parquetview('nestedregion.parquet')
where
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipdate" <= date '1998-12-01' - interval '90' day
group by
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_linestatus"
order by
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_linestatus"
