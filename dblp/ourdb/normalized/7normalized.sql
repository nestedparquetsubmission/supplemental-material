SELECT "author", year, count(title)
FROM ourdb.parquetview('dblp0.parquet') d0, ourdb.parquetview('dblp1.parquet') d1
WHERE d0._sk = d1._psk0 and author is not null
GROUP BY "author", year