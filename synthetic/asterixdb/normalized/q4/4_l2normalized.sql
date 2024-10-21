select avg(greatest(l0.a, l1.`b-element`, l2.`b-c`)) 
from l2_0 l0 inner join l2_1 l1 on l0._sk = l1._psk0 
                         inner join l2_2 l2 on l1._sk = l2._psk1;