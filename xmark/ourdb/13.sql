-- Q13 List the names of items registered in Australia along with their descriptions.
select "regions.australia.item.list.element.name", "regions.australia.item.list.element.description.text"
from ourdb.parquetview('sf10.parquet')