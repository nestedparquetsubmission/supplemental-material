select p.people_person_name, e.regions_europe_item_name
from Xmark_12 p 
     left outer join Xmark_5 a on p.people_person__id = a.closed_auctions_closed_auction_buyer__person
     left outer join Xmark_26 e on e.regions_europe_item__id = a.closed_auctions_closed_auction_itemref__item;