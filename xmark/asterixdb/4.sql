with bidders as (
    select oa.reserve, oa.open_auctions_open_auction__id as aid, b.personref._person as p, b.date, b.time
    from Xmark as x unnest x.open_auctions.open_auction as oa
      unnest oa.bidder as b
)
select b1.reserve
from bidders b1, bidders b2
where b1.aid = b2.aid and b1.p = 'person20' and b2.p = 'person51' and (b1.date < b2.date or (b1.date = b2.date and b1.time < b2.time));