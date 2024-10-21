-- TPC-H Query 6
select
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice" * "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount") as revenue
from
        ourdb.parquetview('nestedregion.parquet')
where
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipdate" >= date '1994-01-01'
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_shipdate" < date '1994-01-01' + interval '1' year
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount" between 0.06 - 0.01 and 0.06 + 0.01
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_quantity" < 24
