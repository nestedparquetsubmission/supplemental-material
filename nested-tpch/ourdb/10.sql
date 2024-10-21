-- TPC-H Query 10
select
        "r_nations.list.element.n_customers.list.element.c_custkey",
        "r_nations.list.element.n_customers.list.element.c_name",
        sum("r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_extendedprice" * (1 - "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_discount")) as revenue,
        "r_nations.list.element.n_customers.list.element.c_acctbal",
        "r_nations.list.element.n_name",
        "r_nations.list.element.n_customers.list.element.c_address",
        "r_nations.list.element.n_customers.list.element.c_phone",
        "r_nations.list.element.n_customers.list.element.c_comment"
from
        ourdb.parquetview('nestedregion.parquet')
where
        "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate" >= date '1993-10-01'
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_orderdate" < date '1993-10-01' + interval '3' month
        and "r_nations.list.element.n_customers.list.element.c_orders.list.element.o_lineitems.list.element.l_returnflag" = 'R'
group by
        "r_nations.list.element.n_customers.list.element.c_custkey",
        "r_nations.list.element.n_customers.list.element.c_name",
        "r_nations.list.element.n_customers.list.element.c_acctbal",
        "r_nations.list.element.n_customers.list.element.c_phone",
        "r_nations.list.element.n_name",
        "r_nations.list.element.n_customers.list.element.c_address",
        "r_nations.list.element.n_customers.list.element.c_comment"
order by
        revenue desc
limit
        20
