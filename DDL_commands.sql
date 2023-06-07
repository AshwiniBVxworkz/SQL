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