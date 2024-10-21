select open_auction.bidder[1].increase
from hive.xmark.dataset cross join unnest(open_auctions.open_auction) as open_auction;