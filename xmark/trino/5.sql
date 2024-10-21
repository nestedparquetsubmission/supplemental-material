select count(*)
from hive.xmark.dataset cross join unnest(closed_auctions.closed_auction) as closed_auction
where closed_auction.price >= 40;