-- TPC-H Query 4
select
        o_orderpriority,
        count(*) as order_count
from
        (select unnest(c_orders, recursive := true) from (select unnest(n_customers, recursive := true) from (select unnest(r_nations, recursive := true) from 'nestedregion.parquet')))
where
        o_orderdate >= date '1993-07-01'
        and o_orderdate < date '1993-07-01' + interval '3' month
        and exists (
                select
                        *
                from
                        (select unnest(o_lineitems, recursive := true) from (select unnest(c_orders, recursive := true) from (select unnest(n_customers, recursive := true) from (select unnest(r_nations, recursive := true) from 'nestedregion.parquet'))))
                where
                        l_orderkey = o_orderkey
                        and l_commitdate < l_receiptdate
        )
group by
        o_orderpriority
order by
        o_orderpriority
