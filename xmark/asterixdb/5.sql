select count(*)
from Xmark as x unnest x.closed_auctions.closed_auction as closed_auction
where closed_auction.price >= 40;