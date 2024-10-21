select avg(greatest(a, "b-element", "b-c-element","b-c-d-element","b-c-d-e-element","b-c-d-e-f-element","b-c-d-e-f-g")) 
from hive.generated.l6_6 l6 inner join hive.generated.l6_5 l5 on l5._sk = l6._psk5
                         inner join hive.generated.l6_4 l4 on l4._sk = l5._psk4
                         inner join hive.generated.l6_3 l3 on l3._sk = l4._psk3 
                         inner join hive.generated.l6_2 l2 on l2._sk = l3._psk2
                         inner join hive.generated.l6_1 l1 on l1._sk = l2._psk1
                         inner join hive.generated.l6_0 l0 on l0._sk = l1._psk0;