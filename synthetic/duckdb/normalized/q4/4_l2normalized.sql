select avg(greatest(a, "b-element", "b-c")) 
from 'normalized/l2_0_a.parquet' l0 inner join 'normalized/l2_1_a.parquet' l1 on l0._sk = l1._psk0 
                         inner join 'normalized/l2_2_a.parquet' l2 on l1._sk = l2._psk1;