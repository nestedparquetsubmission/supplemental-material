-- Q5: How many sold items cost more than 40? ===
select count(*)
from ourdb.parquetview('sf10.parquet')
where "closed_auctions.closed_auction.list.element.price" >= 40