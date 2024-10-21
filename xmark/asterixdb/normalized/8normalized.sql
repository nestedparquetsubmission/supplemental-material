-- Q8 List the names of persons and the number of items they bought.
select p.people_person_name as a, count(a.closed_auctions_closed_auction_buyer__person) as b
from Xmark_12 p left outer join Xmark_5 a
on p.people_person__id = a.closed_auctions_closed_auction_buyer__person
group by p.people_person__id, p.people_person_name;