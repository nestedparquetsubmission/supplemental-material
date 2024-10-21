-- Q5: How many sold items cost more than 40? ===
select count(*)
from 'sf10_5.parquet'
where closed_auctions_closed_auction_price >= 40