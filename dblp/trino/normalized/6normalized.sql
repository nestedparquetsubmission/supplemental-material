SELECT author, count(title)
FROM hive.dblp.d0 d0, hive.dblp.d1 d1
WHERE d0._sk = d1._psk0 and author is not null
GROUP BY author;