-- Q2: Return the initial increase"s of all open auctions
select 
	"open_auctions.open_auction.list.element.bidder.list.element.increase"
from ourdb.parquetview('sf10.parquet') a 
where "open_auctions.open_auction.list.element.bidder.sk" = (select min("open_auctions.open_auction.list.element.bidder.sk") 
																		  from ourdb.parquetview('sf10.parquet') b 
																		  where a."open_auctions.open_auction.list.element._id" = b."open_auctions.open_auction.list.element._id")
