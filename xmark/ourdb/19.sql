-- Q19 Give an alphabetically ordered list of all items along with their location.
with items (item, location) as (
select "regions.asia.item.list.element.name", "regions.asia.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
union all
select "regions.australia.item.list.element.name", "regions.australia.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
union all
select "regions.africa.item.list.element.name", "regions.africa.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
union all
select "regions.europe.item.list.element.name", "regions.europe.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
union all
select "regions.namerica.item.list.element.name", "regions.namerica.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
union all
select "regions.samerica.item.list.element.name", "regions.samerica.item.list.element.location"
from ourdb.parquetview('sf10.parquet')
)

select * from items
order by item