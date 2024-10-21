select p.people_person_name, e.regions_europe_item_name
from hive.xmark.x12 p 
     left outer join hive.xmark.x5 a on p.people_person__id = a.closed_auctions_closed_auction_buyer__person
     left outer join hive.xmark.x26 e on e.regions_europe_item__id = a.closed_auctions_closed_auction_itemref__item;