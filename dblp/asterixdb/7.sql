select a, d.year as b, count(d.title) as c
from Dblp d unnest d.author as a
group by a, d.year;