select avg(greatest(l0.a, l1.b)) 
from l1_0 l0 inner join l1_1 l1 on l0._sk = l1._psk0;