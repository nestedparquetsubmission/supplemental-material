-- Q20  Group customers by their income and output the cardinality of each group.
select income as a, count(*) as b
from (select case when p.profile._income >= 100000 then 'preferred' 
                when p.profile._income >= 30000 then 'standard'
                when p.profile._income < 30000 then 'challenge'
                when p.profile._income is missing then 'na' end as income 
    from Xmark as x unnest x.people.person as p) u
group by income;