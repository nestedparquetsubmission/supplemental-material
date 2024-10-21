select avg(greatest(a, b)) 
from hive.generated.l1_1 l1 inner join hive.generated.l1_0 l0 on l0._sk = l1._psk0;