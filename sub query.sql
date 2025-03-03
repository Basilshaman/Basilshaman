use basi;
select * from book1;
select * from book2;
select * from book3;
select * from book4;

select `First Name`,`Last Name` from book1 where `ï»¿Employee ID` in (select `ï»¿Employee ID` from book3 where state="Ohio");
use sakila;

select *from rental;
select *from customer;
select *from customer where `customer_id` in (select `customer_id`from rental group by`customer_id` having count(`customer_id`)>10);
select *from film;
select avg(`rental_duration`)from film;
select `rental_duration`from film where `rental_duration`>(select avg(`rental_duration`)from film);