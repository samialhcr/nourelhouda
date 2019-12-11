**************CREATION DES TABLES DANS LE SITE A (MARRAKECH)**********

create table SERVICE_MARRAKECH as select * from SERVICE@HOSPITALIERE.SAFI.COM  where hopital='MARRAKECH';


create table Infermier_MARRAKECH as select Inum,Snum from INFERMIER@HOSPITALIERE.SAFI.COM where Snum IN(select Snum from SERVICEMARRAKECH);

create table employe of Employe_type (
    primary key (Enum)

);

create table Docteur of Docteur_type(
    primary key (Dnum)
)

create table patient_Kech as select Pnum,lit,nom from patient@HOSPITALIERE.SAFI.COM where Snum  in (select * from SERVICEMARRAKECH)
