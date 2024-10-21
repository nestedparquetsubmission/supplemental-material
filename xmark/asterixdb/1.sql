-- Q1: Return the name of the person with ID ‘person0’
select p.name
from Xmark as x unnest x.people.person as p
where p._id = 'person0';