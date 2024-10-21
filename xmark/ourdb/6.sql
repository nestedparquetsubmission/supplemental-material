-- Q6 How many items are listed on all continents?
select (select count("regions.africa.item.list.element._id") from ourdb.parquetview('sf10.parquet'))
     + (select count("regions.asia.item.list.element._id") from ourdb.parquetview('sf10.parquet'))
     + (select count("regions.australia.item.list.element._id") from ourdb.parquetview('sf10.parquet'))
     + (select count("regions.europe.item.list.element._id") from ourdb.parquetview('sf10.parquet'))
     + (select count("regions.namerica.item.list.element._id") from ourdb.parquetview('sf10.parquet'))
     + (select count("regions.samerica.item.list.element._id") from ourdb.parquetview('sf10.parquet'))