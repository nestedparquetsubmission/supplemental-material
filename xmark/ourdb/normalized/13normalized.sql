-- Q13 List the names of items registered in Australia along with their descriptions.
select regions_australia_item_name, regions_australia_item_description_text
from ourdb.parquetview('sf10_22.parquet')