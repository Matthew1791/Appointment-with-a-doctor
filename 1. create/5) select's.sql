--SELECT t1.col, t3.col
--FROM table1 join table2 ON table1.primarykey = table2.foreignkey
--join table3 ON table2.primarykey = table3.foreignkey
--doctor degre


--все города по регионам
select towns.name, regions.name from towns inner join regions
on towns.id_region = regions.id_region

--все специальности, доктора из каких больниц
select specialities.id_speciality, doctors.name, hospitals.name
from specialities join hospitals on specialities.id_hospital = hospitals.id_hospital
join doctors on hospitals.id_hospital = doctors.id_hospital


