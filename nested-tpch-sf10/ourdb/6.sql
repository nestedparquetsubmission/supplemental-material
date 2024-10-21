-- TPC-H Query 6
select
        sum("c_orders.list.element.o_lineitems.list.element.l_extendedprice" * "c_orders.list.element.o_lineitems.list.element.l_discount") as revenue
from
        ourdb.parquetview('nestedcustomer.parquet')
where
        "c_orders.list.element.o_lineitems.list.element.l_shipdate" >= date '1994-01-01'
        and "c_orders.list.element.o_lineitems.list.element.l_shipdate" < date '1994-01-01' + interval '1' year
        and "c_orders.list.element.o_lineitems.list.element.l_discount" between 0.06 - 0.01 and 0.06 + 0.01
        and "c_orders.list.element.o_lineitems.list.element.l_quantity" < 24
