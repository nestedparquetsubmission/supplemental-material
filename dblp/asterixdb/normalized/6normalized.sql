SELECT d1.author as a, count(d0.title) as b
FROM Dblp_0 d0, Dblp_1 d1
WHERE d0._sk = d1._psk0 and d1.author is not missing
GROUP BY d1.author;