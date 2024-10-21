select p.people_person_name, e.regions_europe_item_name
from 'sf10_12.parquet' p 
     left outer join 'sf10_5.parquet' a on p.people_person__id = a.closed_auctions_closed_auction_buyer__person
     left outer join 'sf10_26.parquet' e on e.regions_europe_item__id = a.closed_auctions_closed_auction_itemref__item