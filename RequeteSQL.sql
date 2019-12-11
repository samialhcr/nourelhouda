*********QUESTION1:***********

select directeur.nom 
from Service@HOSPITALIERE.SAFI.COM 
where nom='gerotie' and directeur.spec='cardiologique' 
and Snum in (select Snum from Patient@HOSPITALIERE.SAFI.COM )