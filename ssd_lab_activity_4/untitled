
DELIMITER //

Create Procedure CUSTOMER_DB.sumx(
IN A INT,
IN B INT,
OUT TOT INT
)
Begin

	SELECT A+B
    INTO TOT;
    
End //
DELIMITER ;

CALL CUSTOMER_DB.sumx(44, 66, @TOT);
select @TOT;