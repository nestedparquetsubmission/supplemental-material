-- Q17 Which persons don't have a homepage?
select person.name
from Xmark as x unnest x.people.person as person
where person.homepage is missing;