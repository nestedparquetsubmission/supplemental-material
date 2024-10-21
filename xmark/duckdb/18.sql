select 2.20371 * reserve
               from (select unnest(open_auctions.open_auction).reserve as reserve from 'sf10.parquet') oa