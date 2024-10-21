SELECT d1.author as a, year as b, count(d0.title) as c
FROM Dblp_0 d0, Dblp_1 d1
WHERE d0._sk = d1._psk0 and d0.title like '%database%' and d0.title like '%text%' and d0.title like '%mining%'
GROUP BY d1.author, d0.year;