SELECT "author.list.element", year, count(title)
FROM ourdb.parquetview('dblp.parquet')
WHERE "author.list.element" is not null
GROUP BY "author.list.element", year