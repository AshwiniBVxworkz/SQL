CREATE Database task_1;
use task_1;

/*creating table -SYNTAX-CREATE TABLE table_name(column_name datatype,column_name datatype...);*/ 
CREATE TABLE food_info(product_name varchar(20),manufacture_date varchar(15),expiray_date varchar(15),MRP float,calories varchar(10),total_fat_in_g varchar(10),cholestrol_in_mg varchar(10),protien_in_g varchar(10),vitamin_A varchar(10),vitamin_c varchar(10),calcium varchar(10),iron varchar(10),sodium_in_mg varchar(10),dietary_fibre varchar(10),servings_per_package int,seving_size_in_g int);
select* from food_info;

/*Syntax to add table-ALTER TABLE table_name ADD COLUMN column_name dataype*/
ALTER TABLE food_info ADD COLUMN patassium_in_g varchar(10); 
ALTER TABLE food_info ADD COLUMN sugars_in_g varchar(10);
ALTER TABLE food_info ADD COLUMN dietary_fat_in_g varchar(10);


/* Synatx to drop/delte table-ALTER TABLE table_name DROP COLUMN column_name */
ALTER TABLE food_info DROP COLUMN iron;

/*Syntax to rename a column -ALTER TABLE RENAME  old_table_name RENAME column_name_name;*/
ALTER TABLE food_info RENAME  COLUMN MRP to cost;
ALTER TABLE food_info RENAME COLUMN vitamin_A to vitamin_D;
ALTER TABLE food_info RENAME COLUMN vitamin_D to vitamin_A;
ALTER TABLE food_info RENAME COLUMN vitamin_c to vitamin_B;
ALTER TABLE food_info RENAME COLUMN vitamin_B to vitamin_C;

/* Syntax to change datatype- ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/
ALTER TABLE food_info MODIFY COLUMN patassium_in_g int;
ALTER TABLE food_info MODIFY COLUMN sugars_in_g int;
ALTER TABLE food_info MODIFY COLUMN  dietary_fat_in_g  int;
ALTER TABLE food_info MODIFY COLUMN cost float;
ALTER TABLE food_info MODIFY COLUMN cost int;

CREATE TABLE fertilizer(id int ,fertilizer_name varchar(20),fertlizer_type varchar(20),cost float,total_nitrogen varchar(20),phosphate varchar(20),potash varchar(20),calcium varchar(20),magnesium varchar(20),sulphur varchar(20),boron varchar(20),chlorine varchar(20),cobalt varchar(20),copper varchar(20),iron varchar(20),manganese varchar(20));
select* from fertilizer;
DROP TABLE fertilizer;

ALTER TABLE fertilizer ADD   COLUMN sodium varchar(20);
ALTER TABLE fertilizer ADD COLUMN molybdenum varchar(20);
ALTER TABLE fertilizer ADD COLUMN zn varchar(20);

ALTER TABLE fertilizer DROP COLUMN sodium;

ALTER TABLE fertilizer RENAME COLUMN cost to MRP;
ALTER TABLE fertilizer RENAME COLUMN MRP to cost;
ALTER TABLE fertilizer RENAME COLUMN total_nitrogen to nitrogen ;
ALTER TABLE fertilizer RENAME COLUMN phosphate to tatal_phosphate;
ALTER TABLE fertilizer RENAME COLUMN tatal_phosphate to phosphate ;

ALTER TABLE fertilizer MODIFY COLUMN cost int;
ALTER TABLE fertilizer MODIFY COLUMN cost bigint;
ALTER TABLE fertilizer MODIFY COLUMN cost float;
ALTER TABLE fertilizer MODIFY COLUMN id float;
ALTER TABLE fertilizer MODIFY COLUMN id int;

CREATE TABLE trip_plan( id int,city_name varchar(20),objective varchar(20),start_date varchar(20),end_date varchar(20),no_of_days int,no_of_resorts int,resort_name varchar(20),no_of_homestays varchar(20),homestay_name varchar(20),cafe varchar(20),hotels varchar(20),temples varchar(20),falls varchar(20));
select* from trip_plan;

ALTER TABLE trip_plan ADD COLUMN  lakes varchar(20);
ALTER TABLE trip_plan ADD COLUMN special_foods varchar(20);
ALTER TABLE trip_plan ADD COLUMN distance_in_km float;
ALTER TABLE trip_plan ADD COLUMN regional_special varchar(20);
ALTER TABLE trip_plan ADD COLUMN forest_reserviours varchar(20); 

ALTER TABLE trip_plan DROP COLUMN lakes;

ALTER TABLE trip_plan RENAME COLUMN lakes to waterway;
ALTER TABLE trip_plan RENAME COLUMN waterway to lakes; 
ALTER TABLE trip_plan RENAME COLUMN city_name to destination;

ALTER TABLE trip_plan MODIFY COLUMN objective float;
ALTER TABLE trip_plan MODIFY COLUMN objective varchar(20);
ALTER TABLE trip_plan MODIFY COLUMN id float;
ALTER TABLE trip_plan MODIFY COLUMN id int;

create database ipl;
use ipl;

/*DML -used to insert,modify data
 1)insert 2) */
 
 CREATE Table ipl_info(id int,team varchar(20),opposition varchar(20),venye varchar(20));
 INSERT INTO ipl_info values(1,'RCB','CSK','BANGalore');
 select* from ipl_info;
  INSERT INTO ipl_info values(1,'RCB','4','BANGalore');
   INSERT INTO ipl_info values(1,'MI','CSK','BANGalore');

/*inserting values to particular columns ,but in other colums it stors null values*/
 INSERT INTO ipl_info(id,venye)values(3,'Mumbai');
 
select* from food_info;
INSERT INTO food_info values ("DRY Dates","11/11/2022","11/11/2023",435,"12%","0.23","8","7","0.23%","0.34%","2%","0.5","45%",3,43,12,23,"34");
INSERT INTO food_info values("Dry Grapes","23/12/2021","01/12/2023",789,"11%","0.21","7","8","0.13%","0.31%","12%","0.1","15%",1,42,22,13,"33");
INSERT INTO food_info values("Cashew","04/11/2020","04/04/2023",345,"13%","0.22","1","9","0.33%","0.34%","2%","0.6","46%",3,43,15,18,"31");
INSERT INTO food_info values("SAlted Pista","16/04/2022","16/06/2023",278,"10%","0.26","2","3","0.43%","0.34%","4%","0.6","55%",1,53,22,73,"94");
INSERT INTO food_info values("Almonds","19/09/2011","15/12/2013",230,"14%","0.28","7","6","0.22%","0.39%","2%","0.78","46%",1,78,67,26,"76");
INSERT INTO food_info values("BLack Resins","17/06/2014","11/07/2016",280,"15%","0.13","9","5","0.25%","0.84%","3%","0.25","85%",8,23,45,83,"64");
INSERT INTO food_info values("BLUEberries","21/10/2012","28/01/2013",100,"16%","0.20","2","7","0.29%","0.46%","7%","0.15","21%",3,73,12,33,"23");
INSERT INTO food_info values("Brazil Nuts","19/18/2007","18/03/2005",320,"17%","0.2","6","9","0.30%","0.94%","8%","0.55","89%",5,53,12,76,"67");
INSERT INTO food_info values("Dry Apricots","17/07/2002","23/07/2003",453,"18%","0.3","8","7","0.31%","0.34%","4%","0.65","56%",7,93,42,73,"89");
INSERT INTO food_info values("DRy figs","27/04/2014","17/09/2016",567,"19%","0.83","3","6","0.23%","0.84%","6%","0.75","45%",9,78,12,93,"66");
INSERT INTO food_info values("Walnuts","29/05/2019","14/09/2021",546,"14%","0.93","2","6","0.23%","0.64%","9%","0.95","23%",6,43,72,46,"45");
INSERT INTO food_info values("Pisctachios","18/11/2020","01/01/2022",897,"11%","0.29","5","1","0.23%","0.45%","8%","0.05","90%",3,12,12,34,"87");
INSERT INTO food_info values("Fresh Dates","17/10/2019","31/01/2021",678,"12%","0.26","2","7","0.23%","0.31%","1%","0.55","89%",1,31,12,89,"56");
INSERT INTO food_info values("Brown Resins","18/06/2014","24/07/2016",234,"13%","0.23","8","6","0.23%","0.39%","5%","0.65","67%",2,45,12,67,"98");
INSERT INTO food_info values("Pine Nuts","04/10/2020","04/07/2023",123,"18%","0.25","1","9","0.23%","0.37%","8%","0.59","34%",5,40,12,34,"76");
INSERT INTO food_info values("Punkin seeds","16/07/2022","30/05/2023",345,"12%","0.93","4","9","0.23%","0.35%","3%","0.58","55%",6,12,12,2,"23");
INSERT INTO food_info values("Sunflower seeds","29/18/2007","19/07/2005",654,"10%","0.13","2","9","0.25%","0.34%","7%","0.52","95%",9,73,12,98,"87");
INSERT INTO food_info values("Dried Apricots","04/04/2020","07/07/2023",289,"18%","0.24","1","8","0.53%","0.34%","8%","0.53","85%",3,13,12,67,"34");
INSERT INTO food_info values("Munakka","16/06/2022","07/07/2023",456,"10%","0.23","9","7","0.23%","0.44%","4%","0.51","51%",7,43,12,25,"67");
INSERT INTO food_info values("Whole cashew","16/12/2022","12/10/2023",509,"17%","0.73","8","3","0.23%","0.14%","9%","0.53","15%",6,33,12,31,"98");

/* coomand to display a particular row based on checking condition of column*/
select* from food_info where cost=100;  
select* from food_info where calories="12%";
select* from food_info where protien_in_g>4;
select* from food_info where product_name="Pine Nuts";
select* from food_info where cost<400;

INSERT INTO fertilizer values(1 ,"Annapurna","Organic", 1000.87,'12%','23%','12%','56%','14%','54%','14%','1%','8%','17%','8%','12%','8%','34%');
INSERT INTO fertilizer values(2,"NUVIQO","Organic",31456 ,'0.94%','18%','0.52%','8%','4%','3%','0.31%','0.64%','12%','16%','2%','1%','0.14%','0.25%');
INSERT INTO fertilizer values(3,"Agro Farm","Organic", 1567.90,'','2%','0.31%','6%','23%','17%','54%','16%','18%','0.52%','0.94%','3%','0.37%','14%');
INSERT INTO fertilizer values(4,"Green Drop","Organic", 1754.00,'3%','18%','12%','1%','0.31%','4%','0.23%','17%','0.25%','0.14%','6%','0.64%','0.37%','0.25%');
INSERT INTO fertilizer values(5,"All in One","Organic",900.9 ,'4%','0.94%','14%','3%','8%','12%','0.37%','0.23%','3%','54%','16%','2%','4%','0.23%');
INSERT INTO fertilizer values(6,"Bone Meal","Organic",1343.8 ,'18%','6%','0.25%','54%','0.31%','0.23%','0.14%','23%','0.3%','0.94%','4%','0.64%','17%','4%');
INSERT INTO fertilizer values(7,"Fact Orgainc","Organic", 1276.9,'14%','1%','6%','4%','12%','4%','16%','0.94%','8%','3%','17%','0.23%','16%','0.9%');
INSERT INTO fertilizer values(8,"PUSHP","Organic",1453.90 ,'0.94%','54%','0.31%','0.23%','0.37%','2%','23%','0.14%','3%','12%','6%','17%','1%','0.3%');
INSERT INTO fertilizer values(9,"Bhoom Power","Organic", 1900.0,'14%','16%','0.3%','0.94%','18%','0.31%','0.37%','0.23%','4%','2%','0.64%','0.14%','0.31%','0.37%');
INSERT INTO fertilizer values(10,"Bhoomi","Organic", 1567.00,'0.1%','8%','1%','3%','0.52%','8%','0.37%','2%','16%','6%','0.23%','0.14%','0.94%','16%');
INSERT INTO fertilizer values(11,"Grow Max","Organic", 1567.09,'12%','6%','0.25%','1%','0.23%','14%','0.23%','3%','0.31%','18%','0.64%','0.31%','1%','17%');
INSERT INTO fertilizer values(12,"KRISHI","Organic", 1300.0,'0.6%','0.25%','23%','6%','4%','0.52%','12%','17%','1%','0.23%','0.94%','0.3%','3%','0.37%');
INSERT INTO fertilizer values(13,"Chambal ","In-Organic",1243.0 ,'12%','8%','1%','2%','23%','0.31%','16%','2%','17%','0.23%','0.37%','18%','0.14%','23%');
INSERT INTO fertilizer values(14,"Aries Agro","In-Organic", 1675.98,'0.64%','54%','2%','2%','0.52%','16%','0.25%','0.25%','0.14%','0.23%','17%','4%','0.37%','23%');
INSERT INTO fertilizer values(15,"Pradeep Phosphates","In-Organic", 1187.56,'0.3%','0.52%','6%','0.37%','23%','1%','3%','16%','14%','0.23%','0.3%','0.14%','13%','1%');
INSERT INTO fertilizer values(16,"Yara International","In-Organic", 1768.09,'0.52%','0.23%','18%','6%','3%','16%','0.31%','0.14%','8%','0.3%','54%','16%','17%','2%');
INSERT INTO fertilizer values(17,"Kribho","In-Organic", 1765.09,'16%','0.52%','0.37%','4%','0.25%','2%','6%','12%','14%','17%','3%','16%','0.64%','0.3%');
INSERT INTO fertilizer values(18,"Basant Agro","In-Organic", 1768.09,'4%','54%','16%','23%','1%','0.23%','5%','18%','0.23%','18%','17%','6%','14%','0.14%');
INSERT INTO fertilizer values(19,"Bhadra","Organic", 1345.34,'0.23%','8%','1%','18%','2%','2%','0.31%','54%','16%','0.94%','6%','23%','0.64%','4%');
INSERT INTO fertilizer values(20,"Rama Phosphates","In-Organic", 1876.45,'4%','0.25%','12%','0.23%','18%','2%','0.23%','1%','54%','0.14%','0.94%','0.37%','14%','17%');



select* from fertilizer where id=2
select * from fertilizer where id=8;
select* from fertilizer where cost<1000;
select* from fertilizer where id=8;
select* from fertilizer where manganese='4%';

INSERT INTO trip_plan values( 1,'Chikkamagluru','enjoy nature ','01/01/2022','05/01/2022', 4,56 ,'Siri Nature Roast','197','Plantation Homestay','Siri Cafe','Mayura',' Deviramma','Hebbe','Kotte Kadbu',245.9 ,'Ayyan kere','Hirekolale Lake');
INSERT INTO trip_plan values(2,'Shivamogga','enjoy nature','02/03/2021','05/03/2021', 3, 43,'Kimmane','123','River View','Malnad Cafe','Ashoka','Kote Anjaneya','Jog falls','avlakii', 250.6,'Bhadra Dam','Gajnur Dam');
INSERT INTO trip_plan values(3,'Hassan','visit places','09/04/2023','10/04/2023', 2, 23,'Hoysala village ','111','Tigers Homestay','Malnad Special','Hoysala','Hasanamba','Manjehalli Falls','coconut rice', 345.98,'Yavgachi Dam','Gorur Dam');
INSERT INTO trip_plan values(4,'Manglore','enjoy vacation','12/12/2020','12/12/2020',2 , 14,'River Roost','167','Rockwoods','Brio Cafe','Sea View','Srir Sharavu','Arbi falls','Fish ', 123.09,'Kavoor lake','Gujjiu kere');
INSERT INTO trip_plan values(5,'Udupi','pilgrimage centre','16/06/2018','21/06/2018', 5, 34,'Paradise Lagoon','87','Jaya Homestay','Sagar Sangam Cafe','Udupi upahar','Udupi Krishna','Karval falls','Buns', 123.87,'Someshwara wildlife','Swarna Rivwer');
INSERT INTO trip_plan values(6,'Dharmasthala','pilgrimage centre','25/06/2019','28/06/2019',3 , 12,'Nethravathi','23','Nisarga','Vijjaya Coffe','Nethravathi','Sri Manjunatha','Didupe','NeerDose', 765.00,'Mudaje','Nethravtahi');
INSERT INTO trip_plan values(7,'Banglore','Enjoy','02/10/2021','04/10/2021',2 ,144 ,'Prestige Garden','45','Sampada','Coffee day','A2B','Nandi','nill','All', 125.98,'Avahallli Forest','Vrishavathi');
INSERT INTO trip_plan values(8,'Hampi','To know history','19/06/2018','22/06/2018', 3,15 ,'Hampi Heritage','23','Lotus homestay','Chill out cafe','Akash','Hampi Temple','hampi ','Roti', 345.00,'Mattige betta','Tungabhadra');
INSERT INTO trip_plan values(9,'Davangere','To visit places','17/03/2020','20/03/2020', 3, 16,'DVG Socials','3','Shanthi','Monkey Cafe','Grand Sannidi','Harihareshwara','Hadadi','Benne Dosa', 234.00,'Avaraga lake','Thungabhadra');
INSERT INTO trip_plan values(10,'Sakleshpura','enjoy nature','23/06/2019','25/06/2019',2 ,16 ,'GRK Nature','97','Fernands','Malnad coffee','Rosetta','Panchamukhi Ganapathi','Magajahalli','AkkiRoti', 765.00,'Hamvatti River','Hemavathi river');
INSERT INTO trip_plan values(11,'Coorg','enjoy nature','22/06/2018','23/06/2018', 1, 10,'Avadale Coorg','145','Sugggi Stay','Coorg spcl','Hotel Le Coorg','Bhagavathi','Abbi','Pandi Curry', 236.0,'Chiklihole','Cauvery River');
INSERT INTO trip_plan values(12,'Badami','pilgrimage centre','15/01/2020','17/01/2020', 2, 23,'Kanthi resorts','4','Krishna Homestay','Coffe adda','Banashankari hotel','Banashakari','Akka-Tangi falls','Jola Roti', 456.98,'Nil','Krishna');
INSERT INTO trip_plan values(13,'Mysore','To know history','02/03/2021','04/03/2021', 2, 32,'Nisarga Resort','32','Tulips','Coffee stall','Gate Hotel','Chamundi','Balmuri falls','Mysore paak', 345.98,'Doddakere Tank','Devarkere');
INSERT INTO trip_plan values(14,'Gokarna','Enjoy','16/06/2018','19/06/2018', 3,32 ,'Coconut Tree ','2','Arya Homestay','Zoom coffee','Paradise Hotel','Rudragaya Temple','Vibhuthi','Patrode',234.98 ,'Sun rise poiny','Om Beach');
INSERT INTO trip_plan values(15,'Dandeli','Enjoy ','25/03/2020','30/03/2020', 4, 12,'Dandeli Jungle','15','Wild Flower','Special cup','Jungle','Sri Ishwara','Chota Mounlangi','Bisi belebarth', 456.67,'KaliTiger Reserviour','Supa Dam');
INSERT INTO trip_plan values(16,'Karwar','Enjoy','10/01/2022','15/01/2022', 5, 15,'DEvbag Heritage','12','Yashoda Homestay','INside cafe','Amar hotel','Maruthi','Baahu','Masli kadi', 876.86,'forest garden','Kali');
INSERT INTO trip_plan values(17,'Belur','To know history','23/06/2018','25/06/2018', 2, 17,'Green Pasture','50','Evergreen','Giridhama','Soundarya ','Chennakeshawa temple','Ermai','cocounut rice', 765.87,'Yagachi dam','yagachi');
INSERT INTO trip_plan values(18,'Bijapur','To know history','23/06/2019','28/06/2019', 5,23 ,'Fern','5','Sabala','WILDHUB cafe','CLOVE','Narasimha','Markandeya','Kudke mosru', 234.89,'Karad Doddi','Bhima');
INSERT INTO trip_plan values(19,'Pattadkallu','To know history','01/06/2018','08/06/2018', 7, 17,'GRK Nature','2','Serene','cafe','Royal Basant','pattadkallu temple','Siddeshwra','Jolad Rotti', 123.87,'nil','Malaprabha');
INSERT INTO trip_plan values(20,'Chithradurga','To know history','05/01/2022','10/01/2022',5  ,23 ,'Sati Fort','1','Amulya Homestay','Fort Cafe','Aishwarya ','Hidimbeshwara','Hidimbeshwara','Jola Roti', 145.87,'Jog matti','Vedavathi');


select* from trip_plan where  id=1;  
select* from trip_plan where id<5;
select* from trip_plan where  destination='Chikkamagluru';  
select* from trip_plan where distance_in_km>800;
select* from trip_plan where  objective='enjoy';  












