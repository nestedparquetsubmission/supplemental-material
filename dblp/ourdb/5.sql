SELECT title FROM ourdb.parquetview('dblp.parquet') WHERE title like '%database%' or title like '%text%' or title like '%mining%'