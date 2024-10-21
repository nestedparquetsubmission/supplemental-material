select 2.20371 * oa.reserve
from Xmark as x unnest x.open_auctions.open_auction as oa;