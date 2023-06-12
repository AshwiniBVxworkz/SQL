create database task3;
use task3;

CREATE TABLE bank_info(id int,bank_name varchar(10),account_holder varchar(10),balance int,bank_id varchar(10));
INSERT INTO bank_info values (1,'SBI','Karna',200000,'123');
INSERT INTO bank_info values(2,'ICICI','Ram',300000,'234');
INSERT INTO bank_info values(3,'Canara','Sitha',400000,'123');
INSERT INTO bank_info values(4,'Kotak','Anjan',450000,'567');
INSERT INTO bank_info values(5,'SBI','Bhim',350000,'235');
INSERT INTO bank_info values(6,'Punjab ','Canara',300000,'675');
INSERT INTO bank_info values(7,'Punjab ','Eshwar',700000,'775');
INSERT INTO bank_info values(8,'SBI','Arjun',356000,'135');
INSERT INTO bank_info values(9,'SBI','Shiv',356000,'135'); 

select* from  bank_info;

 /* UPDATE */
 UPDATE bank_info SET bank_id='156' where id=2; 
 UPDATE  bank_info SET account_holder="Shakthi" where account_holder="Anjan";
 UPDATE bank_info SET account_holder="Ganga" where id=6 and account_holder="Canara";
 UPDATE bank_info SET bank_id='070' where id=1;
 UPDATE bank_info SET balance=100000 where balance =200000;
 
 /*UPDATE using AND*/
 UPDATE bank_info SET bank_id=077 where balance=356000 and bank_id=135 and id=8;
 UPDATE bank_info SET balance=400000 where balance=356000 and bank_name='SBI' and bank_id=135;
 UPDATE bank_info SET bank_name='Kotak' where bank_name='SBI' and bank_id=77;
 
 /*UPDATE using OR*/
 UPDATE bank_info SET balance=67890 where bank_id=567 OR balance =400000;
 UPDATE bank_info SET balance=450000 where bank_name='Canara' OR account_holder='Shakthi';
 UPDATE bank_info SET bank_id=453 where account_holder='Shiv' OR bank_id=77 OR balance=700000;
 
 /*BETWEEN*/
 SELECT*  from bank_info where id  between 1 AND 7;
 SELECT * from bank_info where bank_id between 0 AND 500;
 SELECT* from bank_info where balance between 400000 AND 700000;	
 
 /*AND*/
 select* from bank_info where id=9 AND bank_name='SBI' ;
 select* from bank_info where bank_name='Kotak' AND account_holder='Shakthi';
 select* from  bank_info where balance=300000 AND bank_id=156;
 select* from bank_info where bank_name='Punjab' AND id=7 ;
 select* from bank_info where bank_name='Punjab' AND bank_id=675;
 
 /*OR*/
 select* from bank_info where bank_id=070 OR id=1;
 select* from bank_info where bank_name='SBI' OR id=2 OR id=7;
 select* from bank_info where balance=100000 OR account_holder='Karna' OR bank_id=156;
 select* from bank_info where bank_name='ICICI' OR id=2 OR balance=450000;
 select* from bank_info where account_holder='Ram' OR id=2 OR bank_id=123 OR id=7;
 
 /* IN :Avoid multiple or conditions-but for only one column */
 SELECT* from bank_info where id IN(1,4,5);
 SELECT* from bank_info where balance IN(100000,450000,700000);
 SELECT* from bank_info where account_holder IN('Ram','Sitha');
 select* from bank_info where bank_name IN('KOtak','Canara','SBI');
 select* from bank_info where bank_id IN(070,123,453);
 
 /*NOT IN -giver except OR values*/
 SELECT * from bank_info where id NOT IN(1,2,3);
 SELECT* from bank_info where account_holder NOT IN('Shiv','arjun','ganga');
 SELECT* from bank_info where bank_name NOT IN('SBI','ICICI','Canara');
 Select* from bank_info where balance NOT IN(450000,700000,300000);
 select* from bank_info where bank_id NOT IN(070,453); 
 
 
 
 /*order by*/
 select* from   bank_info order by id ;
 select* from bank_info order by  id desc;
 
 /*distinct*/
 select distinct (bank_name) from bank_info;
 
 /*Aggregate functions
    1) count 2)sum 3) max 4) min 5)avg */
    
    select sum(balance) from bank_info;
	select min(balance) from bank_info;
	select max(balance) from bank_info;
	select count(balance) from bank_info;
	select avg(balance) from bank_info;
    
  /* INSTR*/
  SELECT INSTR ('XWORKZODC','O');
  SELECT bank_name, INSTR(bank_name ,'B') from bank_info;
  
  SELECT SUBSTR('XWORKZODC',4,3);
  

 
 
