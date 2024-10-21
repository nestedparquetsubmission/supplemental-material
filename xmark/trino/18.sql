select 2.20371 * reserve
from hive.xmark.dataset cross join unnest(open_auctions.open_auction);