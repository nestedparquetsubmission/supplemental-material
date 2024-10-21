-- Q4: List the reserves of those open auctions where a certain person issued a bid before another person.
select p20."open_auctions.open_auction.list.element.bidder.list.element.personref._person", p20."open_auctions.open_auction.list.element.reserve"
from ourdb.parquetview('sf10.parquet') p20, ourdb.parquetview('sf10.parquet') p51
where p20."open_auctions.open_auction.list.element.bidder.list.element.personref._person" = 'person20' and p51."open_auctions.open_auction.list.element.bidder.list.element.personref._person" = 'person51'
      and p20."open_auctions.open_auction.list.element._id" = p51."open_auctions.open_auction.list.element._id"
      and p20."open_auctions.open_auction.list.element.bidder.sk" < p51."open_auctions.open_auction.list.element.bidder.sk"