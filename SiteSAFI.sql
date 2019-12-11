**************CREATION DES TABLES DANS LE SITE A (SAFI)**********

CREATE TABLE SERVICE OF service_type (
constraint primary key(Snum));


create table SERVICE_SAFI as select * from SERVICE@HOSPITALIERE.SAFI.COM  where hopital='SAFI';

CREATE VIEW Service_View as select * from SERVICE_SAFI@HOSPITALIERE.SAFI.COM UNION select * from SERVICE_MARRAKECH@HOSPITALIERE.MARRAKECH.COM; 

CREATE TABLE INFERMIER OF INFERMIER_type (
constranit primary key(Inum),
constraint foreign key(Snum) refernces Service(Snum));

create table Infermier_Safi as select Inum,Snum from INFERMIER@HOSPITALIERE.SAFI.COM where Snum IN(select Snum from SERVICE_SAFI);

CREATE VIEW Infermeir_View as select Inum,Snum from Infermier_Safi@HOSPITALIERE.SAFI.COM inf1,Infermier_MARRAKECH@HOSPITALIERE.MARRAKECH.COM inf2 
where inf1.Inum=inf2.Inum;

create table employe of Employe_type 
(
    primary key (Enum)

);

create table Docteur of Docteur_type 
(
    primary key (Dnum)

);


create table patient of patient_type
  ( Primary key (Pnum),
    foreign key (Snum) referances Service(Snum)

  );


 create table patient_safi as select Pnum,lit,nom, from patient@HOSPITALIERE.SAFI.COM where Snum in (select Snum from SERVICE_SAFI);

create view Patien_lit as select * from patient_safi safi , patient_Kech@HOSPITALIERE.MARRAKECH.COM kesh
 where safi.Pnum = kesh.Pnum;

















