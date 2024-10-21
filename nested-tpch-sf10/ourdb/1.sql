-- TPC-H Query 1
select
        "c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "c_orders.list.element.o_lineitems.list.element.l_linestatus",
        sum("c_orders.list.element.o_lineitems.list.element.l_quantity") as sum_qty,
        sum("c_orders.list.element.o_lineitems.list.element.l_extendedprice") as sum_base_price,
        sum("c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "c_orders.list.element.o_lineitems.list.element.l_discount")) as sum_disc_price,
        sum("c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "c_orders.list.element.o_lineitems.list.element.l_discount") * (1 + "c_orders.list.element.o_lineitems.list.element.l_tax")) as sum_charge,
        avg("c_orders.list.element.o_lineitems.list.element.l_quantity") as avg_qty,
        avg("c_orders.list.element.o_lineitems.list.element.l_extendedprice") as avg_price,
        avg("c_orders.list.element.o_lineitems.list.element.l_discount") as avg_disc,
        count(*) as count_order
from
        ourdb.parquetview('nestedcustomer.parquet')
where
        "c_orders.list.element.o_lineitems.list.element.l_shipdate" <= date '1998-12-01' - interval '90' day
group by
        "c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "c_orders.list.element.o_lineitems.list.element.l_linestatus"
order by
        "c_orders.list.element.o_lineitems.list.element.l_returnflag",
        "c_orders.list.element.o_lineitems.list.element.l_linestatus"
