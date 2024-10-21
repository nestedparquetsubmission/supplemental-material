select avg(f.`element`-g) 
from l6 as l unnest(l.b) as b unnest(b.c) as c unnest(c.d) as d unnest (d.e) as e unnest (e.f) as f unnest (f.g) as g;