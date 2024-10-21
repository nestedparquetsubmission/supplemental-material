-- Q14 Return the names of all items whose description contains the word `gold'.
(
	select regions_africa_item_name
	from hive.xmark.x14
	where regions_africa_item_description_text like '%gold%'
)
union all
(
	select regions_asia_item_name
	from hive.xmark.x18
	where regions_asia_item_description_text like '%gold%'
)
union all
(
	select "regions_australia_item_name"
	from hive.xmark.x22
	where "regions_australia_item_description_text" like '%gold%'
)
union all
(
	select "regions_europe_item_name"
	from hive.xmark.x26
	where "regions_europe_item_description_text" like '%gold%'
)
union all
(
	select "regions_namerica_item_name"
	from hive.xmark.x30
	where "regions_namerica_item_description_text" like '%gold%'
)
union all
(
	select "regions_samerica_item_name"
	from hive.xmark.x34
	where "regions_samerica_item_description_text" like '%gold%'
);