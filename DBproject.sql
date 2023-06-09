create table cars(
CAR_ID number(11,0),
BRAND varchar(50),
CARMODEL varchar(50),
COLOR varchar(50),
RELEASEDATA varchar(50),
ENGINE varchar(50),
CONDITION varchar(100),
PRICE number(25,5),
primary key(CAR_ID));


insert into cars values (1 , 'BMW' , 'F06' , 'WHITE' , '2011' , '4.4' , 'Normal Wear' , 18900);
insert into cars values (2 , 'TOYOTA' , 'SUPRA' , 'WHITE' , '2020' , '3.0' , 'Brand New' , 50920);
insert into cars values (3 , 'MERCEDES' , 'CLS' , 'BLACK' , '2016' , '6.3' , 'New' , 35000);
insert into cars values (4 , 'HONDA' , 'FIT' , 'SILVER' , '2012' , '1.3' , 'Normal Wear' , 5000);
insert into cars values (5 , 'PORSCHE' , '911' , 'RED' , '2022' , '3.7' , 'Brand New' , 101200);
insert into cars values (6 , 'TESLA' , 'Model-S' , 'BLACK' , '2023' , '0.0' , 'Low Damage' , 80000);
insert into cars values (7 , 'NISSAN' , 'GT-R' , 'ORANGE' , '2011' , '3.8' , 'Normal Wear' , 108000);
insert into cars values (8 , 'AUDI' , 'RS7' , 'BLUE' , '2017' , '4.0' , 'Brand New' , 127000);


create table owners(
CAR_ID number(11,0),
OWNER_ID number(11,0) unique,
FIRST_NAME varchar(50),
LAST_NAME varchar(50),
EMAIL varchar(50),
PHONE varchar(30),
VINCODE varchar(50),
primary key(CAR_ID));

alter table owners modify VINCODE varchar(50) unique;
alter table owners modify VINCODE varchar(50) not null;
alter table owners modify OWNER_ID number(11,0) unique;
alter table owners modify OWNER_ID number(11,0) not null;
alter table owners modify FIRST_NAME not null;
alter table owners modify LAST_NAME not null;
alter table owners modify EMAIL not null;
alter table owners modify EMAIL varchar(50) unique;
alter table owners modify PHONE varchar(30) unique not null;
alter table owners add foreign key(CAR_ID) references cars(CAR_ID);


insert into owners values(1,898546324, 'JOHN','MACALISTER', 'JM@GMAIL.COM', '+995574171819', 'ABC74DE8F41000');
insert into owners values(2,898546324, 'SAM','BROWN', 'SB@GMAIL.COM', '+99550147258', 'AQAZ74WFSD54800');
insert into owners values(3,147258369, 'JACK','GREALISH', 'JG@GMAIL.COM', '+1422514', 'XCV14XCVX58888');
insert into owners values(4,123456798, 'LUKA','BITSADZE', 'LB@GMAIL.COM', '+995512326584', 'VIN1121CODE254000');
insert into owners values(5,320770989, 'DACHI','BREGADZE', 'DB@GMAIL.COM', '+995598562354', 'POR452NJ5KOP668');
insert into owners values(6,101010101, 'LEO','MESSI', 'LM@GMAIL.COM', '+1010101010', 'GO1010AT77778');
insert into owners values(7,787549187, 'CONNOR','MCGREGOR', 'CM@GMAIL.COM', '+74565210', 'CON14MU8X9LLOP');
insert into owners values(8,017010119, 'ARNOLD','SCHWARZENEGGER', 'ASC@GMAIL.COM', '+1235415', 'ASR741GB54X1000');
update owners set OWNER_ID = 124496670 WHERE CAR_ID = 2;

select FIRST_NAME, LAST_NAME, PHONE, BRAND, CARMODEL, RELEASEDATA as YEAR,PRICE, c.CAR_ID
from cars c join owners o
on c.CAR_ID=O.CAR_ID
order by price desc;



create table SERVICES(
    BRAND VARCHAR(50),
    ENGINE_SERVICE VARCHAR(100),
    ELECTRICITY_SERVICE VARCHAR(100),
    PAINT_SERVICE VARCHAR(100),
    DRIVETRAIN_SERVICE VARCHAR(100),
    PRIMARY KEY(BRAND)
);

INSERT INTO SERVICES VALUES('BMW', 'ELIAVA', 'ELIAVA', 'TEGETA MOTORS', 'TEGETA MOTORS');
INSERT INTO SERVICES VALUES('TOYOTA', 'GELOVANI STR#49', 'GELOVANI STR#49', 'VARKETILI ZEMO PLATO', 'VARKETILI ZEMO PLATO');
INSERT INTO SERVICES VALUES('MERCEDES', 'UNIVERSITETI STR#2', 'UNIVERSITETI STR#2', 'UNIVERSITETI STR#2', 'UNIVERSITETI STR#2');
INSERT INTO SERVICES VALUES('HONDA', 'ELIAVA', 'ELIAVA', 'SARAJISHVILI METRO', 'SARAJISHVILI METRO');
INSERT INTO SERVICES VALUES('PORSCHE', 'AGHMASHENEBLIS XEIVANI #140', 'AGHMASHENEBLIS XEIVANI #140', 'AGHMASHENEBLIS XEIVANI #140', 'AGHMASHENEBLIS XEIVANI #140');
INSERT INTO SERVICES VALUES('TESLA','FEIKARI STR #12','FEIKARI STR #12', 'FEIKARI STR #12', 'FEIKARI STR #12');
INSERT INTO SERVICES VALUES('NISSAN', 'EREDVI STR#21', 'DADIANIS #14', 'DADIANIS #14', 'EREDVI STR #21');
INSERT INTO SERVICES VALUES('AUDI', 'MUXIANI ME3 MIKRO', 'MUXIANI ME3 MIKRO', 'GLDANI ME2 MIKRO', 'GLDANI ME2 MIKRO');




CREATE TABLE carfax (
  CAR_ID NUMBER(11,0),
  CURRENT_OWNER_ID NUMBER(20,0),
  NUMBER_OF_OWNERS NUMBER(11,0),
  DAMAGE_HISTORY VARCHAR2(50),
  MILEAGE NUMBER(20,0),
  VINCODE VARCHAR2(50) UNIQUE,
  PRIMARY KEY (CAR_ID)
);


insert into carfax values(1,898546324,4,'Flood',135000,'ABC74DE8F41000');
insert into carfax values(2,124496670,1,'No',2000,'AQAZ74WFSD54800');
insert into carfax values(3,147258369,2,'Car accident ( Broken Front Bumper )',87000,'XCV14XCVX58888');
insert into carfax values(4,123456798,6,'Dent and Scratches',239000,'VIN1121CODE254000');
insert into carfax values(5,320770989,1,'No',8000,'POR452NJ5KOP668');
insert into carfax values(6,101010101,2,'No',900,'GO1010AT77778');
insert into carfax values(7,787549187,1,'Accident on a High Speed, Broken All Around',69000,'CON14MU8X9LLOP');
insert into carfax values(8,917010119,3,'Vandalism',53000,'ASR741GB54X1000');


alter table carfax add foreign key(CAR_ID) references cars(CAR_ID);

select c.CAR_ID,o.CAR_ID, BRAND, CARMODEL, MILEAGE, DAMAGE_HISTORY
from cars c join carfax o
on c.CAR_ID=O.CAR_ID;



CREATE TABLE carservice (
    SERVICE_ID NUMBER(11, 0),
    CAR_ID NUMBER(11, 0),
    SERVICE_DATE VARCHAR2(50),
    SERVICE_DESCRIPTION VARCHAR2(100),
    SERVICE_LOCATION VARCHAR2(100),
    SERVICE_TOTAL_PRICE NUMBER(15, 2),
    PRIMARY KEY (SERVICE_ID)
);


INSERT INTO CARSERVICE VALUES(1,1,'12/04/2022','Engine restavration after flood','Eliava',7000);
INSERT INTO CARSERVICE VALUES(2,1,'17/04/2022','Full Electricity restavration','Eliava',2500);
INSERT INTO CARSERVICE VALUES(3,1,'24/04/2022','All DriveTrain change','TEGETA MOTORS',4578);
INSERT INTO CARSERVICE VALUES(4,8,'6/02/2019','Full re-paint after vandalism','GLDANI ME2 MIKRO',3998);
INSERT INTO CARSERVICE VALUES(5,5,'01/10/2022','Changed tyres','GLDANI ME2 MIKRO',3998);
INSERT INTO CARSERVICE VALUES(6,6,'05/08/2022','Changed charging port','GLDANI ME2 MIKRO',3998);
INSERT INTO CARSERVICE VALUES(7,2,'01/10/2022','Oil changed','GELOVANI STR#$9',3998);
INSERT INTO CARSERVICE VALUES(8,3,'01/11/2017','Changed front bumper','UNIVERSITETI STR#2',875);
INSERT INTO CARSERVICE VALUES(9,4,'03/03/2015','Removed dents and scratches','SARAJISHVILI METRO',1200);
INSERT INTO CARSERVICE VALUES(10,4,'05/12/2017','Changed oil','ELIAVA',20);
INSERT INTO CARSERVICE VALUES(11,4,'07/06/2019','Changed brakes','SARAJISHVILI METRO',510);
INSERT INTO CARSERVICE VALUES(12,7,'30/04/2015','Changed all parts and rebuilt building','EREDVI STR #21',14200);

alter table cars add foreign key(BRAND) references SERVICES(BRAND);

select c.BRAND,CARMODEL,s.ENGINE_SERVICE, s.PAINT_SERVICE
from cars c join services s
on c.BRAND=s.BRAND;

alter table CARSERVICE add foreign key(CAR_ID) references CARFAX(CAR_ID);

select a.BRAND,a.CARMODEL,s.CAR_ID, s.NUMBER_OF_OWNERS,s.DAMAGE_HISTORY,c.SERVICE_DESCRIPTION,c.SERVICE_DATE
from carservice c join carfax s
on c.CAR_ID=s.CAR_ID
join CARS a
on a.CAR_ID=s.CAR_ID
order by CAR_ID asc;


