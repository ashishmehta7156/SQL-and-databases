select current_user();

-- show databases present in your pc
show databases;

-- if you use any database key
use sakila;

-- databases me multiple tables hogi
show tables;

select * from customer;

-- if you access particular column key
select customer_id from customer;

-- you can access multiple time with a same column
select first_name,customer_id,first_name from customer;

-- data ko filter karna hai to where ka use hoga
select * from customer where customer_id=4;
select customer_id,first_name,last_name from customer where customer_id=4;

select * from customer where first_name='MARY';
select * from customer where last_name='JONES';
select * from customer where first_name='marion';

-- assignment
-- learn between and in and like operator

-- between operator 
select * from customer where customer_id between 2 and 5;
select customer_id,first_name,last_name from customer where customer_id between 1 and 10;
select customer_id,first_name,last_name from customer where first_name between 'lisa' and 'patrica'; -- it give name from l to p tak

-- in operator 
select * from customer where customer_id in (2,5); -- ye hame spacific row he dega
select customer_id,first_name,last_name from customer where customer_id in(11,21,33);
select customer_id,first_name,last_name from customer where customer_id =11 or customer_id=3; -- we use or operator

-- not in operator 
select * from customer where customer_id not in (2,5,6); -- 2,5,6 is table me nahi hoga 
select customer_id,first_name,last_name from customer where customer_id not in(11,21,33);
select customer_id,first_name,last_name from customer where customer_id != 2 and customer_id!=5;


-- class 3
select * from customer where first_name='lisa';

select * from customer where customer_id=2 or customer_id>5;

select * from customer where first_name='marion' or store_id=2;
select * from customer where first_name='marion' and store_id=2;

select customer_id,first_name,last_name from customer where customer_id not between 1 and 10;

-- class 4

-- like operator --> search for a pattern or search for charactor

-- '%'
use sakila;
select * from customer where first_name='maria'; 
select * from customer where first_name like 'm%';
select * from customer where first_name like 'm%n';
select * from customer where first_name like '%m';
select * from customer where first_name like 'a%';

--  '_' it is use for one charactor 
select * from customer where first_name like '__';
select * from customer where first_name like '__%';
select * from customer where first_name like '___';
select * from customer where first_name like 'jo%_';
select * from customer where first_name like '%a%a%';
select * from customer where first_name like '_a_c';
select * from customer where first_name like '%aa%';

-- concat function
-- > it is used to combine word and string
select first_name,last_name,concat(first_name,last_name) from customer;
select first_name,last_name,concat('MR',' ',first_name,last_name) from customer; 
select * from customer where concat(first_name,last_name)='marysmith';
select first_name,last_name,concat(first_name,last_name) from customer where concat(first_name,last_name)='marysmith';

show tables;
select * from sales;

-- mathmatical function we used 
-- #  ---> mod ,round
select round(12.56) from sales;   -- the round of 12.56 is 13 
select round(12.45) from sales;		-- it will give 12 because after decimal we have .45 so it will round near by intiger
select round(12.45,1) from sales;	-- we can round 4 aslo here the decimal place of 4 is 1 so we round it 
select round(12.97,1) from sales; -- the round of .9 is 10 it will give 12 as 1 carry
select round(12.46,2) from sales; -- it give the same because after 6 there is no value s it give same 
select round(12.362,2) from sales;

-- 1 'rpad' function
-- Ye function kisi string ke right side (end) me extra characters add karta hai jab tak desired length complete na ho jaye. 
-- RPAD(string, total_length, pad_string)
select first_name,rpad(first_name,3,"#") from actor;

-- 2  'instr'
-- Ye function kisi string ke andar kisi specific character ya word ki position batata hai.
-- INSTR(main_string, search_string)
select first_name, instr(first_name,"e") from actor ;
select first_name, instr(first_name,"EO") from actor ;		-- it will give 0 because eo is not in countinus manner 

-- 3 'locate'   same as instr
-- LOCATE ka kaam bhi kisi string ke andar kisi character ya word ki position find karna hota hai.
-- LOCATE(search_string, main_string)
select first_name ,locate('e',first_name,3) from actor;  -- e postion in first_name column at 2 in 'penelope name'

-- 4 'replace' 
-- REPLACE ka use string ke andar kisi word ya character ko change (replace) karne ke liye hota hai.
-- REPLACE(main_string, old_string, new_string)
select first_name, replace('penelope','pen','ash') from actor; 

-- strcmp
-- Ye do strings ko compare karta hai.
-- STRCMP(string1, string2)
-- Output Rules:
-- 0 → Dono strings same hain
-- -1 → First string chhoti hai
-- 1 → First string badi hai
select first_name,strcmp('nick','nick2') from actor ;

-- 'substr' 
-- SUBSTR ka use kisi string ka specific part (substring) nikalne ke liye hota hai.
-- SUBSTR(string, start_position, length)
select first_name,substr(first_name,2) from actor;
select first_name,substr(first_name,2,3) from actor;
select first_name,substr(first_name,2,5) from actor;

-- 'trim'
-- TRIM ka use string ke starting aur ending spaces (extra blank spaces) remove karne ke liye hota hai.
-- TRIM(string)
select trim(" hey ");  -- it remove spaces from this string
select trim(leading " " from "  hey ");	-- it remove space before hey
select trim(trailing " " from "  hey ");	-- it remove space after hey
select trim(both " " from "  hey  ");	-- it remove space from both side of hey
select trim(both "#" from "##### hey #####");	-- it remove # from both side 
select trim(both "#" from "##### he####y #####"); 	-- it can't remove from the middle 
select trim(both "#" from " ##### hey ##### ");		 -- if you give widespace than it can't remove midddle charactor 

-- 'lpad' 
-- Ye string ke left side (starting) me extra characters add karta hai jab tak desired length complete na ho jaye.
-- LPAD(string, total_length, pad_string)
select first_name, lpad(first_name,4,'#') from actor;   

-- 'rpad'
-- Ye string ke right side (end) me extra characters add karta hai jab tak required length complete na ho.
-- RPAD(string, total_length, pad_string)
select first_name,rpad(first_name,5,'#') from actor;

-- 'lower' and same as upper
-- LOWER ka use string ke saare uppercase letters ko lowercase me convert karne ke liye hota hai.
-- LOWER(string)
select first_name,lower(first_name) from actor;


-- 'length'			--> length function bytes ginta hai
-- LENGTH ka use string me total characters ki count nikalne ke liye hota hai.
-- LENGTH(string)
select first_name,length(first_name) from actor;

-- char_length		--> number of charactor ginta hai
-- CHAR_LENGTH ka use string me total characters ki counting karne ke liye hota hai.
-- CHAR_LENGTH(string)

select char_length("hey") from dual;

-- 'concat_ws'    ---> concat with seprator
-- CONCAT_WS ka full form hai Concatenate With Separator.
-- CONCAT_WS(separator, string1, string2, string3, ...)

select first_name,concat_ws(" ",'Mrs',first_name,'sharma') from actor;

-- function on numbers,dates

select current_date() from customer; 	-- it show current date in your system 
select current_time() from customer;	-- it show current time in your system
select current_timestamp() from customer;	-- it show current date and current time in your system
select now() from customer;			-- it also show current time and current date from your system

select * from payment;

select payment_id,payment_date,now() from payment;

-- 'adddate'
-- ADDDATE() in SQL (mostly in MySQL) ka use date me extra days ya interval add karne ke liye hota hai.
-- ADDDATE(date, INTERVAL value unit)
select payment_id ,payment_date,adddate(payment_date,3) from payment;	-- it add 3 days in adddate(payment_date,3) column
select payment_id,payment_date, adddate(payment_date,-2) from payment;

-- if you add month and year and week and hour etc
select payment_id,payment_date,adddate(payment_date, interval 2 month)from payment;	-- it add 2 month
select payment_id,payment_date,adddate(payment_date, interval 2 year)from payment;	-- it add 2 year
select payment_id,payment_date,adddate(payment_date, interval 1 week)from payment;	-- it add 1 week
select payment_id,payment_date,adddate(payment_date, interval -2 month)from payment;

-- 'datediff'
-- DATEDIFF() SQL me do dates ke beech ka difference (days me) nikalne ke liye use hota hai.
select payment_id,payment_date,now() ,datediff(now(),payment_date) from payment;	-- payment_date or now date ke bech me kita gape hai vo bata hai


