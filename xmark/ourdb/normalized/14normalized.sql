-- Q14 Return the names of all items whose description contains the word `gold'.
select name
from ( (
	select "regions_africa_item_name"  as name, "regions_africa_item_description_text" as description
	from ourdb.parquetview('sf10_14.parquet')
)
union all
(
	select "regions_asia_item_name" as name, "regions_asia_item_description_text" as description
	from ourdb.parquetview('sf10_18.parquet')
	where regions_asia_item_description_text like '%gold%'
)
union all
(
	select "regions_australia_item_name" as name, "regions_australia_item_description_text" as description
	from ourdb.parquetview('sf10_22.parquet')
)
union all
(
	select "regions_europe_item_name" as name, "regions_europe_item_description_text" as description
	from ourdb.parquetview('sf10_26.parquet')
)
union all
(
	select "regions_namerica_item_name" as name, "regions_namerica_item_description_text" as description
	from ourdb.parquetview('sf10_30.parquet')
)
union all
(
	select "regions_samerica_item_name" as name, "regions_samerica_item_description_text" as description
	from ourdb.parquetview('sf10_34.parquet')
))
where description like '%gold%'