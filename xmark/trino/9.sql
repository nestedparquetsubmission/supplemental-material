select name, product
           from (select person._id as id, person.name from hive.xmark.dataset cross join unnest(people.person) as person) p left outer join 
                (select closed_auction.buyer._person as buyer, closed_auction.itemref._item as item from hive.xmark.dataset cross join unnest(closed_auctions.closed_auction) as closed_auction) ca on p.id = ca.buyer left outer join 
                (select item._id as id, item.name as product from hive.xmark.dataset cross join unnest(regions.europe.item) as item) r on r.id = ca.item;