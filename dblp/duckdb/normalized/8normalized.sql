SELECT d1.author, d0.year, count(d0.title)
FROM 'dblp0.parquet' d0, 'dblp1.parquet' d1
WHERE d0._sk = d1._psk0 and d0.title like '%database%' and d0.title like '%text%' and d0.title like '%mining%'
GROUP BY d1.author, d0.year