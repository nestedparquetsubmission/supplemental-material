select b.name as a, count(a._person) as b
from ( select closed_auction.buyer._person from Xmark as x unnest x.closed_auctions.closed_auction as closed_auction ) as a
        right outer join 
     ( select person._id, person.name from Xmark as x unnest x.people.person as person ) as b
        on a._person = b._id
group by b._id, b.name;