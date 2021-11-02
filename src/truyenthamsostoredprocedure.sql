use classicmodels;
DELIMITER //
create procedure getCusById(in cusNum int(11))
begin
    select * from customers where customerName = cusNum;
end //
DELIMITER ;

call getCusById(169);

DELIMITER //
create procedure GetCustomersCountByCity(in in_city varchar(50), out total int)
begin
    select count(customerNumber) into total from customers where city = in_city;
end //
DELIMITER ;
call GetCustomersCountByCity('Lyon', @total);
select @total;

delimiter //
create procedure SetCounter(inout counter int, in inc int)
begin
    set counter = counter + inc;
end //
delimiter ;
set @counter = 1;
call SetCounter(@counter, 1);
call SetCounter(@counter, 1);
call SetCounter(@counter, 5);
select @counter;
