-- Q17 Which persons don't have a homepage?
select people_person_name
from 'sf10_12.parquet' p
where people_person_homepage is null
