select avg(greatest(a, "b-element", "b-c-element","b-c-d-element","b-c-d-e-element","b-c-d-e-f")) 
from hive.generated.l5_5 l5 inner join hive.generated.l5_4 l4 on l4._sk = l5._psk4
                         inner join hive.generated.l5_3 l3 on l3._sk = l4._psk3 
                         inner join hive.generated.l5_2 l2 on l2._sk = l3._psk2
                         inner join hive.generated.l5_1 l1 on l1._sk = l2._psk1
                         inner join hive.generated.l5_0 l0 on l0._sk = l1._psk0;