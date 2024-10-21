-- Q19 Give an alphabetically ordered list of all items along with their location.
with items (item, location) as (
select "regions_africa_item_name", "regions_africa_item_location"
from 'sf10_14.parquet'
union all
select "regions_australia_item_name", "regions_australia_item_location"
from 'sf10_22.parquet'
union all
select "regions_asia_item_name", "regions_asia_item_location"
from 'sf10_18.parquet'
union all
select "regions_europe_item_name", "regions_europe_item_location"
from 'sf10_26.parquet'
union all
select "regions_namerica_item_name", "regions_namerica_item_location"
from 'sf10_30.parquet'
union all
select "regions_samerica_item_name", "regions_samerica_item_location"
from 'sf10_34.parquet'
)

select * from items
order by item