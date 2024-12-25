select b.id 
from Weather as a join Weather as b 
where datediff(b.recordDate,a.recordDate)=1 and a.temperature<b.temperature;
