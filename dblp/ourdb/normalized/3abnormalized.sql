SELECT title FROM ourdb.parquetview('dblp0.parquet') WHERE title like '%database%' or title like '%text%'