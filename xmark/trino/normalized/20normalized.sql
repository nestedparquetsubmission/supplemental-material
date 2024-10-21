-- Q20  Group customers by their income and output the cardinality of each group.
select g, count(*)
from (select (case when people_person_profile__income >= 100000 then 'preferred' when people_person_profile__income >= 30000 then 'standard' when people_person_profile__income < 30000 then 'challenge' when people_person_profile__income is null then 'na' end) g
	from hive.xmark.x12)
group by g;