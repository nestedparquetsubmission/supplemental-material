select a, year as b, count(d.title) as c
from Dblp as d unnest d.author as a
WHERE d.title like '%database%' or d.title like '%text%' or d.title like '%mining%'
group by a, d.year;