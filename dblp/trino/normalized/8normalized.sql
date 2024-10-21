SELECT author, year, count(title)
FROM hive.dblp.d0 d0, hive.dblp.d1 d1
WHERE d0._sk = d1._psk0 and title like '%database%' and title like '%text%' and title like '%mining%'
GROUP BY author, year;