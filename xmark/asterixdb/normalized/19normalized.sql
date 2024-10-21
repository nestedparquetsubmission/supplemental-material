-- Q19 Give an alphabetically ordered list of all items along with their location.
with items as (
select regions_africa_item_name as item, regions_africa_item_location as location
from Xmark_14
union all
select regions_australia_item_name as item, regions_australia_item_location as location
from Xmark_22
union all
select regions_asia_item_name as item, regions_asia_item_location as location
from Xmark_18
union all
select regions_europe_item_name as item, regions_europe_item_location as location
from Xmark_26
union all
select regions_namerica_item_name as item, regions_namerica_item_location as location
from Xmark_30
union all
select regions_samerica_item_name as item, regions_samerica_item_location as location
from Xmark_34
)

select item, location from items
order by item;