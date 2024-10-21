select avg(greatest(l0.a, l1.`b-element`, l2.`b-c-element`,l3.`b-c-d-element`,l4.`b-c-d-e-element`,l5.`b-c-d-e-f`)) 
from l5_0 l0 inner join l5_1 l1 on l0._sk = l1._psk0 
                         inner join l5_2 l2 on l1._sk = l2._psk1
                         inner join l5_3 l3 on l2._sk = l3._psk2
                         inner join l5_4 l4 on l3._sk = l4._psk3
                         inner join l5_5 l5 on l4._sk = l5._psk4;