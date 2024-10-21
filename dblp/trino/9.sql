select authorelement, year, count(title) 
from hive.dblp.dataset cross join unnest(author) as t(authorelement) 
WHERE title like '%database%' or title like '%text%' or title like '%mining%'
group by authorelement, year;