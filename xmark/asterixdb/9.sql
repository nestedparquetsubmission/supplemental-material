select p.name, r.product
           from (select person._id as id, person.name from Xmark as x unnest x.people.person as person) p left outer join 
                (select closed_auction.buyer._person as buyer, closed_auction.itemref._item as item from Xmark as x unnest x.closed_auctions.closed_auction as closed_auction) ca on p.id = ca.buyer left outer join 
                (select item._id as id, item.name as product from Xmark as x unnest x.regions.europe.item as item) r on r.id = ca.item;