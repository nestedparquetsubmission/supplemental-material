select name, product
           from (select unnest(people.person)._id as id, unnest(people.person).name as name from "sf10.parquet") p left outer join 
                (select unnest(closed_auctions.closed_auction).buyer._person as buyer, unnest(closed_auctions.closed_auction).itemref._item as item from "sf10.parquet") ca on p.id = ca.buyer left outer join 
                (select unnest(regions.europe.item)._id as id, unnest(regions.europe.item).name as product from "sf10.parquet") r on r.id = ca.item