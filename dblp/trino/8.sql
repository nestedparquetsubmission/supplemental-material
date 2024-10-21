select authorelement, year, count(title) 
from hive.dblp.dataset cross join unnest(author) as t(authorelement) 
WHERE title like '%database%' and title like '%text%' and title like '%mining%'
group by authorelement, year;