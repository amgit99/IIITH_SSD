DELIMITER //
CREATE PROCEDURE CUSTOMER_DB.bang()
begin
	select CUST_NAME FROM customer WHERE WORKING_AREA='Bangalore' ;
end //
DELIMITER ;

CALL CUSTOMER_DB.bang();