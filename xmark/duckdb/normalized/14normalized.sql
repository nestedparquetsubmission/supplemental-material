-- Q14 Return the names of all items whose description contains the word `gold'.
(
	select regions_africa_item_name
	from 'sf10_14.parquet'
	where regions_africa_item_description_text like '%gold%'
)
union all
(
	select regions_asia_item_name
	from 'sf10_18.parquet'
	where regions_asia_item_description_text like '%gold%'
)
union all
(
	select "regions_australia_item_name"
	from 'sf10_22.parquet'
	where "regions_australia_item_description_text" like '%gold%'
)
union all
(
	select "regions_europe_item_name"
	from 'sf10_26.parquet'
	where "regions_europe_item_description_text" like '%gold%'
)
union all
(
	select "regions_namerica_item_name"
	from 'sf10_30.parquet'
	where "regions_namerica_item_description_text" like '%gold%'
)
union all
(
	select "regions_samerica_item_name"
	from 'sf10_34.parquet'
	where "regions_samerica_item_description_text" like '%gold%'
)