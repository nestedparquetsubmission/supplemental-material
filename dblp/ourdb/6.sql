SELECT "author.list.element", count(title)
FROM ourdb.parquetview('dblp_arr.parquet')
WHERE "author.list.element" is not null
GROUP BY "author.list.element"