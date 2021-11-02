use classicmodels;
create view customer_views as
    select customerNumber, customerName, phone from customers;
select * from customer_views;

create or replace view customer_views as
    select customerName,customerNumber, contactFirstName, contactLastName, phone, city
from customers
where city = 'Nantes';

drop view customer_views;