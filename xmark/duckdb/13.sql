select unnest(regions.australia.item).name, unnest(regions.australia.item).description.text
          from 'sf10.parquet'