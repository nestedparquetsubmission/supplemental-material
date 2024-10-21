select income, count(*)
from (select case when unnest(people.person).profile._income >= 100000 then 'preferred' 
                when unnest(people.person).profile._income >= 30000 then 'standard'
                when unnest(people.person).profile._income < 30000 then 'challenge'
                when unnest(people.person).profile._income is null then 'na' end as income from 'sf10.parquet')
group by income