-- Q17 Which persons don't have a homepage?
select people_person_name
from hive.xmark.x12 p
where people_person_homepage is null;
