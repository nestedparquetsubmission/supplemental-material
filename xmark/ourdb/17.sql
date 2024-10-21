-- Q17 Which persons don't have a homepage?
select "people.person.list.element.name"
from ourdb.parquetview('sf10.parquet')
where "people.person.list.element.homepage" is null
