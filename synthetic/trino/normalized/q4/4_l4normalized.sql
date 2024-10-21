select avg(greatest(a, "b-element", "b-c-element","b-c-d-element","b-c-d-e")) 
from hive.generated.l4_4 l4 inner join hive.generated.l4_3 l3 on l3._sk = l4._psk3 
                         inner join hive.generated.l4_2 l2 on l2._sk = l3._psk2
                         inner join hive.generated.l4_1 l1 on l1._sk = l2._psk1
                         inner join hive.generated.l4_0 l0 on l0._sk = l1._psk0;