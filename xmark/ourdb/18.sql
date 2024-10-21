-- Q18 Convert the currency of the reserve of all open auctions to another currency.
select "open_auctions.open_auction.list.element.reserve" * 2.20371
from ourdb.parquetview('sf10.parquet')