select f, unnest(g) from (select unnest(f).element f, unnest(f).g g from (select unnest(e).f f from (select unnest(d).e e from (select unnest(c).d d from (select unnest(b).c c from 'l6.parquet')))));