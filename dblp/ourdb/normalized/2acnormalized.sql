SELECT title FROM ourdb.parquetview('dblp0.parquet') WHERE title like '%database%' and title like '%mining%'