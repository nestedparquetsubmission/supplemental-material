-- Q5: How many sold items cost more than 40? ===
select count(*)
from hive.xmark.x5
where closed_auctions_closed_auction_price >= 40;