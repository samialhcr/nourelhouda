************SHEMA GLOBAL DE LA TABLE:**************
modoficationnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn

create type Employe_type as object (
Enum integer,
nom varchar(50),
adr varchar(50),
tel integer
)
not final;

create type Docteur_type UNDER Employe_type(
Dnum integer,
spec varchar(50)
);

create type Infermier_type UNDER Employe_type(
Inum integer,
Snum integer,
rotation varchar(20),
salaire float
);


create type Service_type as object(
Snum integer,
nom varchar(50),
hopital varchar(50),
bat varchar(50),
directeur REF Docteur_type
);


create type Patient_type as object(
  Pnum integer ,
  Snum integer ,
  sAnum integer ,
  lit varchar(50),
  nom varchar(50),
  adr varchar (50),
  mutuelle varchar(50),
  pc integer
);

create type Acte as object (
   Dnum integer,
   Pnum integer ,
   date Date ,
   description varchar(50),
   coef integer
);


create type Salle_type as object (
  SAnum integer,
  Snum integer,
  surveillant ref (infrmier_type) ,
  nblists integer 	
)

