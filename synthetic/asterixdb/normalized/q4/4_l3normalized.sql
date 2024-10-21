select avg(greatest(l0.a, l1.`b-element`, l2.`b-c-element`,l3.`b-c-d`)) 
from l3_0 l0 inner join l3_1 l1 on l0._sk = l1._psk0 
                         inner join l3_2 l2 on l1._sk = l2._psk1
                         inner join l3_3 l3 on l2._sk = l3._psk2;