-- Q14 Return the names of all items whose description contains the word `gold'.
select name
from (
(
	select "regions.africa.item.list.element.name" as name, "regions.africa.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
)
union all
(
	select "regions.asia.item.list.element.name" as name, "regions.asia.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
)
union all
(
	select "regions.australia.item.list.element.name" as name, "regions.australia.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
)
union all
(
	select "regions.europe.item.list.element.name" as name, "regions.europe.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
)
union all
(
	select "regions.namerica.item.list.element.name" as name, "regions.namerica.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
)
union all
(
	select "regions.samerica.item.list.element.name" as name, "regions.samerica.item.list.element.description.text" as description
	from ourdb.parquetview('sf10.parquet') 
))
where description like '%gold%'