select avg(greatest(a,"b-element", "b-c-element","b-c-d-element","b-c-d-e-element","b-c-d-e-f-element","b-c-d-e-f-g")) 
from 'normalized/l6_0_a.parquet' l0 inner join 'normalized/l6_1_a.parquet' l1 on l0._sk = l1._psk0 
                         inner join 'normalized/l6_2_a.parquet' l2 on l1._sk = l2._psk1
                         inner join 'normalized/l6_3_a.parquet' l3 on l2._sk = l3._psk2
                         inner join 'normalized/l6_4_a.parquet' l4 on l3._sk = l4._psk3
                         inner join 'normalized/l6_5_a.parquet' l5 on l4._sk = l5._psk4
                         inner join 'normalized/l6_6_a.parquet' l6 on l5._sk = l6._psk5;