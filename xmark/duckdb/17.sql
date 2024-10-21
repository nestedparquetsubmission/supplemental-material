-- Q17 Which persons don't have a homepage?
select name from
 (select unnest(people.person).name as name, unnest(people.person).homepage as homepage
               from 'sf10.parquet') where homepage is null