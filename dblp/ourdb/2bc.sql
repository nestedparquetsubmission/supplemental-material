SELECT title FROM ourdb.parquetview('dblp.parquet') WHERE title like '%text%' and title like '%mining%'