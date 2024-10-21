select avg(greatest(a, "b-element", "b-c-element","b-c-d")) 
from hive.generated.l3_3 l3 inner join hive.generated.l3_2 l2 on l2._sk = l3._psk2
                            inner join hive.generated.l3_1 l1 on l1._sk = l2._psk1
                            inner join hive.generated.l3_0 l0 on l0._sk = l1._psk0;