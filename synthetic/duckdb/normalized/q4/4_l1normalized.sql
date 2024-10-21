select avg(greatest(a, b)) 
from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0;