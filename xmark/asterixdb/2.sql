select open_auction.bidder[0].increase
from Xmark as x unnest x.open_auctions.open_auction as open_auction;