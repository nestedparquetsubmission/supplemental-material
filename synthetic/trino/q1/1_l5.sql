select avg(felement) from hive.generated.l5 cross join unnest(b) cross join unnest(c) cross join unnest(d) cross join unnest(e) cross join unnest(f) as f(felement);