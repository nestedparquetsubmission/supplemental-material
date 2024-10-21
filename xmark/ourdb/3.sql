-- Q3: Return the IDs of all open auctions whose current increase" is at least twice as high as the initial increase".
select 
	first."open_auctions.open_auction.list.element._id",
	first."open_auctions.open_auction.list.element.bidder.list.element.increase",
	last."open_auctions.open_auction.list.element.bidder.list.element.increase"
from ourdb.parquetview('sf10.parquet') first, ourdb.parquetview('sf10.parquet') last 

where first."open_auctions.open_auction.list.element.bidder.sk" = (select min("open_auctions.open_auction.list.element.bidder.sk") 
																		  from ourdb.parquetview('sf10.parquet') b 
																		  where first."open_auctions.open_auction.list.element._id" = b."open_auctions.open_auction.list.element._id")
	and last."open_auctions.open_auction.list.element.bidder.sk" = (select max("open_auctions.open_auction.list.element.bidder.sk") 
																		  from ourdb.parquetview('sf10.parquet') b 
																		  where last."open_auctions.open_auction.list.element._id" = b."open_auctions.open_auction.list.element._id")
    and first."open_auctions.open_auction.list.element.bidder.list.element.increase" * 2 <= last."open_auctions.open_auction.list.element.bidder.list.element.increase"
    and last."open_auctions.open_auction.list.element._id" = first."open_auctions.open_auction.list.element._id"

