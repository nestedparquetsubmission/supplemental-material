-- Q14 Return the names of all items whose description contains the word `gold'.
select name
from (
    select item.name, item.description.text as description from Xmark as x unnest x.regions.australia.item item
union all 
    select item.name, item.description.text as description  from Xmark as x unnest x.regions.asia.item item
union all 
    select item.name, item.description.text as description  from Xmark as x unnest x.regions.europe.item item
union all 
    select item.name, item.description.text as description  from Xmark as x unnest x.regions.africa.item item
union all 
    select item.name, item.description.text as description  from Xmark as x unnest x.regions.namerica.item item
union all 
    select item.name, item.description.text as description  from Xmark as x unnest x.regions.samerica.item item
) as a
where description like '%gold%';