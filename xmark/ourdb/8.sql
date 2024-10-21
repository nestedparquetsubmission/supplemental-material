-- Q8 List the names of persons and the number of items they bought.

select p."people.person.list.element.name", count(a."closed_auctions.closed_auction.list.element.buyer._person") as itemcount
from ourdb.parquetview('sf10.parquet') p left outer join ourdb.parquetview('sf10.parquet') a
on p."people.person.list.element._id" = a."closed_auctions.closed_auction.list.element.buyer._person"
group by p."people.person.list.element._id", p."people.person.list.element.name"