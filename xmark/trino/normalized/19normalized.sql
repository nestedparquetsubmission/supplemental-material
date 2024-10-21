-- Q19 Give an alphabetically ordered list of all items along with their location.
with items (item, location) as (
select "regions_africa_item_name", "regions_africa_item_location"
from hive.xmark.x14
union all
select "regions_australia_item_name", "regions_australia_item_location"
from hive.xmark.x22
union all
select "regions_asia_item_name", "regions_asia_item_location"
from hive.xmark.x18
union all
select "regions_europe_item_name", "regions_europe_item_location"
from hive.xmark.x26
union all
select "regions_namerica_item_name", "regions_namerica_item_location"
from hive.xmark.x30
union all
select "regions_samerica_item_name", "regions_samerica_item_location"
from hive.xmark.x34
)

select * from items
order by item;