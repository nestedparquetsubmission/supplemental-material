--Q9 List the names of persons and the names of the items they bought in Europe
select p."people.person.list.element.name", i."regions.europe.item.list.element.name"
from ourdb.parquetview('sf10.parquet') p left outer join  ourdb.parquetview('sf10.parquet') a on  p."people.person.list.element._id" = a."closed_auctions.closed_auction.list.element.buyer._person" 
      left outer join ourdb.parquetview('sf10.parquet') i on i."regions.europe.item.list.element._id" = a."closed_auctions.closed_auction.list.element.itemref._item"