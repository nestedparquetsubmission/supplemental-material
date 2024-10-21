select avg(greatest(a, "b-element", "b-c-element","b-c-d-element","b-c-d-e")) 
from 'normalized/l4_0_a.parquet' l0 inner join 'normalized/l4_1_a.parquet' l1 on l0._sk = l1._psk0 
                         inner join 'normalized/l4_2_a.parquet' l2 on l1._sk = l2._psk1
                         inner join 'normalized/l4_3_a.parquet' l3 on l2._sk = l3._psk2
                         inner join 'normalized/l4_4_a.parquet' l4 on l3._sk = l4._psk3;