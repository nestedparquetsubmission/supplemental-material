select name, location
from (
    select name, location from hive.xmark.dataset cross join unnest(regions.australia.item)
union all select name, location from hive.xmark.dataset cross join unnest(regions.africa.item)
union all select name, location from hive.xmark.dataset cross join unnest(regions.asia.item)
union all select name, location from hive.xmark.dataset cross join unnest(regions.europe.item)
union all select name, location from hive.xmark.dataset cross join unnest(regions.samerica.item)
union all select name, location from hive.xmark.dataset cross join unnest(regions.namerica.item)
) order by location asc nulls last;