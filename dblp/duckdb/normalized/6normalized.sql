SELECT author, count(title)
FROM 'dblp0.parquet' d0, 'dblp1.parquet' d1
WHERE d0._sk = d1._psk0 and author not null
GROUP BY author;