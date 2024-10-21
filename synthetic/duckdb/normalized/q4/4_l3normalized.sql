select avg(greatest(a, "b-element", "b-c-element","b-c-d")) 
from 'normalized/l3_0_a.parquet' l0 inner join 'normalized/l3_1_a.parquet' l1 on l0._sk = l1._psk0 
                         inner join 'normalized/l3_2_a.parquet' l2 on l1._sk = l2._psk1
                         inner join 'normalized/l3_3_a.parquet' l3 on l2._sk = l3._psk2;