-- Q20  Group customers by their income and output the cardinality of each group.
select g, count(*)
from (select (case when "people.person.list.element.profile._income" >= 100000 then 'preferred' when "people.person.list.element.profile._income" >= 30000 then 'standard' when "people.person.list.element.profile._income" < 30000 then 'challenge' when "people.person.list.element.profile._income" is null then 'na' end) g
	from ourdb.parquetview('sf10.parquet'))
group by g