-- Q8 List the names of persons and the number of items they bought.
select p.people_person_name, count(closed_auctions_closed_auction_buyer__person) as itemcount
from 'sf10_12.parquet' p left outer join 'sf10_5.parquet' a
on p.people_person__id = a.closed_auctions_closed_auction_buyer__person
group by p.people_person__id, p.people_person_name