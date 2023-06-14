CREATE Database constrains;
use constrains;

CREATE TABLE institute(id int unique ,I_name varchar(20) not null,email varchar(20) unique,ph_No bigint not null unique,address varchar(30) unique,course varchar(20) not null,ratings_out_of_5 float unique,Duration_in_months  float not null,Batches int not null unique,No_of_trainers int not null);
select * from institute; 
INSERT INTO institute values(1,'X-workzs','xwork@gamil.com',9657567678,'rajanagar','java full stack',5,4,3,6);
INSERT INTO institute values(2,'Xworkz','xwork2@gmail.com',9760456535,'Btm','java fulstack',4,4,2,6);
INSERT INTO institute value(3,'J-spiders','Jspi@gmail.com',9657567671,'jayanagar','Devops',3.1,3,1,5);
INSERT INTO institute value(4,'Q-spiders','Qspi@gmail.com',9657567672,'Peeya','Testing',3.2,6,4,6);
INSERT INTO institute value(5,'Code nest','code@gmail.com',9657567673,'Bhasham Cirle','AI & ML',3.3,4,6,5);
INSERT INTO institute value(6,'Informatica','infor@gmail.com',9657567674,'South end circle','Testing',3.4,3,5,6);
INSERT INTO institute value(7,'FITA Academy','fifa@gail.com',96575676755,'RajaRAjeshwari Nagar','Web Development',3.5,4,7,7);
INSERT INTO institute value(8,'Info Campus','Inf@gmail.com',9657567676,'Sriram pur','java fulstack',3.6,1,21,8);
INSERT INTO institute value(9,'Achievers IT','achieve@gmal.com',9657567677,'Konan kunte','Testing',3.7,2,34,9);
INSERT INTO institute value(10,'Be Practical','Beprac@gmail.com',9625756767,'Lalbhag','Devops',3.8,4,9,10);
INSERT INTO institute value(11,'GlobeSoft','glob@gmal.com',9657567679,'Banshankari','java fulstack',3.9,5,8,11);
INSERT INTO institute value(12,'5Square','5Square@gmail.com',9456545234,'Soap factory','App  Development',3,9,12,12);
INSERT INTO institute value(13,'Kcent Technologies','Kcent@gmail.com',9678845673,'vipuram','Cyber Security',4.1,4,16,13);
INSERT INTO institute value(14,'Q-spiders','Q@gmail.com',6345678776,'Malleshvaram','Testing',4.2,5,11,14);
INSERT INTO institute value(15,'Info Campus','In@gmail.com',6345678777,'Sanj nagar','Devops',4.3,3,14,15);
INSERT INTO institute value(16,'J-spider','SpiJ@gmail.com',6345678778,'Nagar bavi','java fulstack',4.4,6,10,16);
INSERT INTO institute value(17,'Achievers IT','Ach@gmail.com',9456545238,'Laggere','App Development',4.5,6,29,17);
INSERT INTO institute value(18,'Informatica','Informat@gmail.com',9456545239,'Thavre Kere','Devops',4.6,4,30,18);
INSERT INTO institute value(19,'Q-spiders','SpiQ@gmail.com',9456545237,'Chamraj Pete','Testing',4.7,4,22,19);
INSERT INTO institute value(20,'Info Campus','Canp@gmail.com',9456545235,'Shivaji Nagar','App  Development',4.8,5,23,20);
INSERT INTO institute value(21,'J-spider','sJder@gmail.com',9456545231,'Majestic','java fulstack',4.9,7,25,21);

select id ,count(id) from institute;

CREATE TABLE Match_details(id int unique,type_ varchar(20)unique ,Women_Men varchar(20) not null,  team1 varchar(10) not null,team2 varchar(10)not null,venue varchar(11) not null,no_of_players int not null,team1_captain varchar(20) not null unique,team2_captain varchar(20) not null unique,Time_IST varchar(20) not null unique ); 
alter table Match_details add column time_IST varchar(10);
Insert INTO Match_details values(1,'Cricket','Men','India','Australia','Mumbai',11,'Kohli','Smith','1PM');
select* from Match_details;
Insert INTO Match_details values(2,'Cricket-test','Women','India','Australia','Banglore',11,'Harmanpreet','Moria','4PM');
Insert INTO Match_details values(3,'Football','Men','Australia','Iran','Argentania',13,'Mathew','Ehsan','2pm');
Insert INTO Match_details values(4,'Football ','Men','Australia','Iran','Argentania',13,'Mathew Yoshida','Ehsan Hajsaafi','7pm');
Insert INTO Match_details values(5,'Chess ','Men','Spain ','Ukrain','Argentania',13,'Alexi','Mariya','12pm');
Insert INTO Match_details values(7,'Volley Ball','WoMen','India ','China','Spain',6,'Minimol','Fen Kung','9.14pm');
Insert INTO Match_details values(8,'Volleyball','Men','India ','China','Ahamadabad',6,'gurinder Singdh','Yuhanji','9.24pm');
Insert INTO Match_details values(9,'Swimming','WoMen','India ','America','Canada',8,'Manna Patel','Katie','1.14pm');
Insert INTO Match_details values(10,'Swimming ','Men','India ','America','Canada',8,'Sanjan Prakash','Michael','5.14pm');
Insert INTO Match_details values(11,'Shooting','Men','India ','Britain','Britain',1,'Abhinav Bindra','Kriss','10.55pm')
Insert INTO Match_details values(12,'Shooting ','WoMen','India ','Britain','Britain',1,'Shriyasi','Osijek','10.15pm');
Insert INTO Match_details values(13,'HandBall','Men','India ','Spain','Spain',7,'Atul Kumar','Gedeon','11.55pm')
Insert INTO Match_details values(14,'Hand Ball','WoMen','India ','Spain','Spain',7,'Shailaja Sharma','Carmen','8.15Am')
Insert INTO Match_details values(15,'Basket Ball','Men','India ','Spain','India',7,'Vishesh','Andei','7.55pm')
Insert INTO Match_details values(16,'BasketBall','WoMen','India ','Russia','India',5,'Akanksha','Musina','7.55Am')
Insert INTO Match_details values(17,'Hockey','Men','India ','Canada','India',11,'Manpreeth Singh','Connar','9.55Am')
Insert INTO Match_details values(18,'Hockey ','Woen','India ','Canada','India',11,'Savitha puniyah','marie Philip','11.55Am')
Insert INTO Match_details values(19,'Kabbadi ','Men','India ','Iran','Iran',7,'Deepak Niwas','Fazel','12.55Am')
Insert INTO Match_details values(20,' Kabbadi ','Women','India ','Iran','Iran',7,'Chayel Choudry','Reaider seidh','6.55Am')
 
 Update Match_details set Women_Men='Women' where id=18;
 commit;
 
create table placement_details(id int not null unique,St_name int not null,year_of_passout int not null,
Degree varchar(20) not null,tenth_marks float not null unique,12th_marks float not null unique,
Degree_marks float not null unique,placed_status varchar(10) not null,company varchar(20) not null    );
alter table placement_details MODIFY  St_name varchar(20);
INSERT INTO placement_details values(1,'Ashwini B V',2022,'BE',88,79,8.2,'NIL','NIL');
INSERT INTO placement_details values(2,'Anusha',2022,'CSE',95,90,8.1,'Placed','AxisBank');
INSERT INTO placement_details values(3,'Lavanya',2022,'CSE',80,86,8.7,'Placed','TCS');
INSERT INTO placement_details values(4,'Thanu',2022,'CSE',90,87,8.8,'Places','Accenture');
INSERT INTO placement_details values(5,'Sanjana',2022,'ISE',77,86,7.8,'Placed','Infosys');
INSERT INTO placement_details values(6,'Pavan K',2022,'EEE',57,78,8.5,'Placed','Design Tree');
INSERT INTO placement_details values(7,'Aishwarya',2022,'BCA',87,37,8,'NIL','NIL');
INSERT INTO placement_details values(8,'Nydile',2021,'BCA',37,47,9,'NIL','NIL');
INSERT INTO placement_details values(9,'Devamsh',2020,'BCA',38,76,6.3,'Placed','Mind Tree');
INSERT INTO placement_details values(10,'Gowthami',2021,'BSE',65,67,6.7,'Placed','Infosys');
INSERT INTO placement_details values(11,'Eshanya',2019,'MEch',55,88,5.8,'Placed','Gangsys');
INSERT INTO placement_details values(12,'Sukhi',2022,'Civil',45,46,47,'NIL','NIL');
INSERT INTO placement_details values(13,'Samskruthi',2019,'EEE',56,56,7.1,'NIL','NIL');
INSERT INTO placement_details values(14,'Swekruthi',2022,'BSE',35,36,6.1,'Placed','Brigosha');
INSERT INTO placement_details values(15,'Chalukya',2018,'ISE',67,64,6.4,'Places','SEESKON');
INSERT INTO placement_details values(16,'Medha',2022,'Biotech',76,71,9.1,'Placed','Wipro');
INSERT INTO placement_details values(17,'Bhavana',2021,'ISE',62,55,6.0,'NIL','NIl');
INSERT INTO placement_details values(18,'Bhumika',2022,'EEE',51,41,5.1,'Placed','Mind Tree');
INSERT INTO placement_details values(19,'Chaithra',2020,'BSE',98,48,8.7,'NIL','NIL');placement_details
INSERT INTO placement_details values(20,'Manvith',2019,'CSE',40,50,9.5,'Placed','IBM');
select * from placement_details;