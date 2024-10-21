select name
from (
    select unnest(regions.australia.item).name as name, unnest(regions.australia.item).description.text as description from 'sf10.parquet'
union all select unnest(regions.asia.item).name as name, unnest(regions.asia.item).description.text as description from 'sf10.parquet'
union all select unnest(regions.europe.item).name as name, unnest(regions.europe.item).description.text as description from 'sf10.parquet'
union all select unnest(regions.africa.item).name as name, unnest(regions.africa.item).description.text as description from 'sf10.parquet'
union all select unnest(regions.namerica.item).name as name, unnest(regions.namerica.item).description.text as description from 'sf10.parquet'
union all select unnest(regions.samerica.item).name as name, unnest(regions.samerica.item).description.text as description from 'sf10.parquet'
)
where description like '%gold%'