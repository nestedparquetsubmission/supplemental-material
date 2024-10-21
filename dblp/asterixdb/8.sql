select a, year as b, count(d.title) as c
from Dblp as d unnest d.author as a
WHERE d.title like '%database%' and d.title like '%text%' and d.title like '%mining%'
group by a, d.year;