select name, count(_person) as itemcount
from ( select closed_auction.buyer._person from hive.xmark.dataset cross join unnest(closed_auctions.closed_auction) as closed_auction )
        right outer join 
     ( select person._id, person.name from hive.xmark.dataset cross join unnest(people.person) as person )
        on _person = _id
group by _id, name;