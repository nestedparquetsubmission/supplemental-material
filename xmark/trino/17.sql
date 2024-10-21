-- Q17 Which persons don't have a homepage?
select person.name
from hive.xmark.dataset cross join unnest(people.person) as person 
where person.homepage is null;