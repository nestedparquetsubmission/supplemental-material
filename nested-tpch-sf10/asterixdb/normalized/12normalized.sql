-- TPC-H Query 12
select
       l.`c_orders-o_lineitems-l_shipmode` as a,
        sum(case
                when o.`c_orders-o_orderpriority` = '1-URGENT'
                        or o.`c_orders-o_orderpriority` = '2-HIGH'
                        then 1
                else 0
        end) as high_line_count,
        sum(case
                when o.`c_orders-o_orderpriority` <> '1-URGENT'
                        and o.`c_orders-o_orderpriority` <> '2-HIGH'
                        then 1
                else 0
        end) as low_line_count
from
        orders o
                inner join lineitem l on o._sk = l._psk1
where
        l.`c_orders-o_lineitems-l_shipmode` in ('MAIL', 'SHIP')
        and l.`c_orders-o_lineitems-l_commitdate` < l.`c_orders-o_lineitems-l_receiptdate`
        and l.`c_orders-o_lineitems-l_shipdate` < l.`c_orders-o_lineitems-l_commitdate`
        and l.`c_orders-o_lineitems-l_receiptdate` >= date('1994-01-01')
        and l.`c_orders-o_lineitems-l_receiptdate` < date('1994-01-01') + duration('P1Y')
group by
       l.`c_orders-o_lineitems-l_shipmode`
order by
       l.`c_orders-o_lineitems-l_shipmode`;
