use classicmodels;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;
call findAllCustomers();



DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()

BEGIN

    SELECT * FROM customers where customerNumber = 177;

END //
DELIMITER ;

call findAllCustomers();

DELIMITER //
create procedure getCusById(in cusNum int(11))
begin
    select * from customers where customerName = cusNum;
end //
DELIMITER ;
call getCusById(175);