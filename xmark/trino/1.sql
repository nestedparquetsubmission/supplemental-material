-- Q1: Return the name of the person with ID ‘person0’
select person.name
from hive.xmark.dataset cross join unnest(people.person) as person
where person._id = 'person0';