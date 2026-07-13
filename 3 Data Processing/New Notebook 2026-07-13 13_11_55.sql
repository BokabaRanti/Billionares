-- Databricks notebook source
select * FROM billionares.money.billionaires_dataset;

select distinct country FROM billionares.money.billionaires_dataset;

select count(distinct country) FROM billionares.money.billionaires_dataset;

select count (distinct personname) FROM billionares.money.billionaires_dataset;

select avg(finalworth) FROM billionares.money.billionaires_dataset;

select * FROM billionares.money.billionaires_dataset
where country = 'France';

select * FROM billionares.money.billionaires_dataset
where country = 'France' and city <> 'Paris';

select * FROM billionares.money.billionaires_dataset
where country = 'France' or country = 'Spain';

select * FROM billionares.money.billionaires_dataset
where country IN('France','Spain','Italy');

select count(personname) FROM billionares.money.billionaires_dataset
where selfmade = 'True';

select industries, count(personname) FROM billionares.money.billionaires_dataset
group by industries;

select industries, count(personname) FROM billionares.money.billionaires_dataset
group by industries
order by count(personname)desc;

select industries, count(personname) AS billionare_count FROM billionares.money.billionaires_dataset
group by industries
order by count(personname) desc;

select industries, count(personname) AS billionare_count FROM billionares.money.billionaires_dataset
group by industries
order by count(personname) desc
limit 10;

select birthmonth,count(personname) FROM billionares.money.billionaires_dataset
group by birthmonth
order by birthmonth asc;

select birthmonth,count(personname) FROM billionares.money.billionaires_dataset
group by birthmonth
order by count(personname) desc;

select birthmonth,count(personname) FROM billionares.money.billionaires_dataset
group by birthmonth
order by count(personname)
LIMIT 15;
