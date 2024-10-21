-- Q14 Return the names of all items whose description contains the word `gold'.
select name 
from 
(
	select regions_africa_item_name as name
	from Xmark_14
	where regions_africa_item_description_text like '%gold%'
union all
	select regions_asia_item_name as name
	from Xmark_18
	where regions_asia_item_description_text like '%gold%'
union all
	select regions_australia_item_name as name
	from Xmark_22
	where regions_australia_item_description_text like '%gold%'
union all
	select regions_europe_item_name as name
	from Xmark_26
	where regions_europe_item_description_text like '%gold%'
union all
	select regions_namerica_item_name as name
	from Xmark_30
	where regions_namerica_item_description_text like '%gold%'
union all
	select regions_samerica_item_name as name
	from Xmark_34
	where regions_samerica_item_description_text like '%gold%') as a;