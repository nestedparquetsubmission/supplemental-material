SELECT title FROM ourdb.parquetview('dblp0.parquet') WHERE title like '%text%' or title like '%mining%';