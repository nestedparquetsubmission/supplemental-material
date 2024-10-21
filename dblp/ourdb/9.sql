SELECT "author.list.element", year, count(title) 
FROM ourdb.parquetview('dblp.parquet')
WHERE (title like '%database%' or title like '%text%' or title like '%mining%') and "author.list.element" is not null
GROUP BY "author.list.element", year