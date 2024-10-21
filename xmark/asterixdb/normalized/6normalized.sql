with africa as (select count(regions_africa_item__id) as c from Xmark_14),
asia as (select count(regions_asia_item__id) as c from Xmark_18),
australia as (select count(regions_australia_item__id) as c from Xmark_22),
europe as (select count(regions_europe_item__id) as c from Xmark_26),
namerica as (select count(regions_namerica_item__id) as c from Xmark_30),
samerica as (select count(regions_samerica_item__id) as c from Xmark_34)

select af.c + ai.c + au.c + eu.c + na.c + sa.c
from africa as af, asia as ai, australia as au, europe as eu, namerica as na, samerica as sa;