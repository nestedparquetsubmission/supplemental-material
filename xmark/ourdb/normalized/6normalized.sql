select (select count(regions_africa_item__id) from ourdb.parquetview('sf10_14.parquet'))
    + (select count(regions_asia_item__id) from ourdb.parquetview('sf10_18.parquet'))
    + (select count(regions_australia_item__id) from ourdb.parquetview('sf10_22.parquet'))
    + (select count(regions_europe_item__id) from ourdb.parquetview('sf10_26.parquet'))
    + (select count(regions_namerica_item__id) from ourdb.parquetview('sf10_30.parquet'))
    + (select count(regions_samerica_item__id) from ourdb.parquetview('sf10_34.parquet'))