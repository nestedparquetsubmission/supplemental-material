SELECT d1.author as a, d0.year as b, count(d0.title) as c
FROM Dblp_0 d0, Dblp_1 d1
WHERE d0._sk = d1._psk0 and (d0.title like '%database%' or d0.title like '%text%' or d0.title like '%mining%') and d1.author is not missing
GROUP BY d1.author, d0.year;