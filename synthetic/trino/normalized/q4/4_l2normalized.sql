select avg(greatest(a, "b-element", "b-c")) 
from hive.generated.l2_2 l2 inner join hive.generated.l2_1 l1 on l1._sk = l2._psk1
                            inner join hive.generated.l2_0 l0 on l0._sk = l1._psk0; 
                         