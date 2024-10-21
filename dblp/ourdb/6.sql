SELECT "author.list.element", count(title)
FROM ourdb.parquetview('dblp.parquet')
WHERE "author.list.element" is not null
GROUP BY "author.list.element"