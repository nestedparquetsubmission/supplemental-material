-- Q20  Group customers by their income and output the cardinality of each group.
select income, count(*)
from (select case when profile._income >= 100000 then 'preferred' 
                when profile._income >= 30000 then 'standard'
                when profile._income < 30000 then 'challenge'
                when profile._income is null then 'na' end as income 
    from hive.xmark.dataset cross join unnest(people.person))
group by income;