select name as a, location as b
from (
    select i.name, i.location from Xmark as x unnest x.regions.australia.item as i
union all select i.name, i.location from Xmark as x unnest x.regions.africa.item as i
union all select i.name, i.location from Xmark as x unnest x.regions.asia.item as i
union all select i.name, i.location from Xmark as x unnest x.regions.europe.item as i
union all select i.name, i.location from Xmark as x unnest x.regions.samerica.item as i
union all select i.name, i.location from Xmark as x unnest x.regions.namerica.item as i
) as u 
order by name asc nulls last;