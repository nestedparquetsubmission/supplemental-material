select authorelement, year, count(title) 
from hive.dblp.dataset cross join unnest(author) as t(authorelement) 
group by authorelement, year;