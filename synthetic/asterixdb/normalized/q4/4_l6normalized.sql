select avg(greatest(l0.a,l1.`b-element`, l2.`b-c-element`,l3.`b-c-d-element`,l4.`b-c-d-e-element`,l5.`b-c-d-e-f-element`,l6.`b-c-d-e-f-g`)) 
from l6_0 l0 inner join l6_1 l1 on l0._sk = l1._psk0 
                         inner join l6_2 l2 on l1._sk = l2._psk1
                         inner join l6_3 l3 on l2._sk = l3._psk2
                         inner join l6_4 l4 on l3._sk = l4._psk3
                         inner join l6_5 l5 on l4._sk = l5._psk4
                         inner join l6_6 l6 on l5._sk = l6._psk5;