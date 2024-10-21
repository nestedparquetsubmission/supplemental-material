select name, location
from (
    select unnest(regions.australia.item).name as name, unnest(regions.australia.item).location as location from 'sf10.parquet'
union all select unnest(regions.asia.item).name as name, unnest(regions.asia.item).location as location from 'sf10.parquet'
union all select unnest(regions.europe.item).name as name, unnest(regions.europe.item).location as location from 'sf10.parquet'
union all select unnest(regions.africa.item).name as name, unnest(regions.africa.item).location as location from 'sf10.parquet'
union all select unnest(regions.namerica.item).name as name, unnest(regions.namerica.item).location as location from 'sf10.parquet'
union all select unnest(regions.samerica.item).name as name, unnest(regions.samerica.item).location as location from 'sf10.parquet'
) order by location asc nulls last