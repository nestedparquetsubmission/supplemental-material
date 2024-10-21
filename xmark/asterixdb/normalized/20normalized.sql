-- Q20  Group customers by their income and output the cardinality of each group.
select g as a, count(*) as b
from (select (case when people_person_profile__income >= 100000 then 'preferred' when people_person_profile__income >= 30000 then 'standard' when people_person_profile__income < 30000 then 'challenge' when people_person_profile__income is missing then 'na' end) g
	from Xmark_12) u
group by g;