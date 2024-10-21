select open_auction._id, open_auction.bidder[1].increase, reverse(open_auction.bidder)[1].increase
from hive.xmark.dataset cross join unnest(open_auctions.open_auction) open_auction
where open_auction.bidder[1].increase * 2 <= reverse(open_auction.bidder)[1].increase;
