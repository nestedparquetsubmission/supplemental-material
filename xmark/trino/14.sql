-- Q14 Return the names of all items whose description contains the word `gold'.
select name
from (
    select item.name, item.description.text as description from hive.xmark.dataset cross join unnest(regions.australia.item) item
union all 
    select item.name, item.description.text as description  from hive.xmark.dataset cross join unnest(regions.asia.item) item
union all 
    select item.name, item.description.text as description  from hive.xmark.dataset cross join unnest(regions.europe.item) item
union all 
    select item.name, item.description.text as description  from hive.xmark.dataset cross join unnest(regions.africa.item) item
union all 
    select item.name, item.description.text as description  from hive.xmark.dataset cross join unnest(regions.namerica.item) item
union all 
    select item.name, item.description.text as description  from hive.xmark.dataset cross join unnest(regions.samerica.item) item
)
where description like '%gold%';