-- Q4: List the reserves of those open auctions where a certain person issued a bid before another person.
select reserve
from (select open_auction.reserve, transform(open_auction.bidder, x -> x.personref._person) as bidders from hive.xmark.dataset cross join unnest(open_auctions.open_auction) open_auction) subquery
where contains(bidders, 'person20') and contains(bidders, 'person51') and array_position(bidders, 'person20') < array_position(bidders, 'person51');
