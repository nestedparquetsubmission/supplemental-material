select (select count(regions_africa_item__id) from hive.xmark.x14)
    + (select count(regions_asia_item__id) from hive.xmark.x18)
    + (select count(regions_australia_item__id) from hive.xmark.x22)
    + (select count(regions_europe_item__id) from hive.xmark.x26)
    + (select count(regions_namerica_item__id) from hive.xmark.x30)
    + (select count(regions_samerica_item__id) from hive.xmark.x34);