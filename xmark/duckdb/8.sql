select name, count(b.buyer) as itemcount
              from (select unnest(closed_auctions.closed_auction).buyer._person as buyer from "sf10.parquet") b right outer join 
                   (select unnest(people.person)._id as id, unnest(people.person).name as name from "sf10.parquet") p
             on b.buyer = p.id
             group by p.id, name