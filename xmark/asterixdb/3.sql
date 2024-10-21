select open_auction._id, open_auction.bidder[0].increase as inc, open_auction.bidder[-1].increase as revinc
from Xmark as x unnest x.open_auctions.open_auction as open_auction
where open_auction.bidder[0].increase * 2 <=  open_auction.bidder[-1].increase;