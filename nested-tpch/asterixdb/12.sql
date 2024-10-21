-- TPC-H Query 12
select
        l.l_shipmode as a,
        sum(case
                when o.o_orderpriority = '1-URGENT'
                        or o.o_orderpriority = '2-HIGH'
                        then 1
                else 0
        end) as high_line_count,
        sum(case
                when o.o_orderpriority <> '1-URGENT'
                        and o.o_orderpriority <> '2-HIGH'
                        then 1
                else 0
        end) as low_line_count
from
        Tpch as t unnest t.r_nations as n unnest n.n_customers as c unnest c.c_orders as o unnest o.o_lineitems as l
where
        l.l_shipmode in ('MAIL', 'SHIP')
        and l.l_commitdate < l.l_receiptdate
        and l.l_shipdate < l.l_commitdate
        and l.l_receiptdate >= datetime('1994-01-01T00:00:00')
        and l.l_receiptdate < datetime('1994-01-01T00:00:00') + duration('P1Y')
group by
        l.l_shipmode
order by
        l.l_shipmode;