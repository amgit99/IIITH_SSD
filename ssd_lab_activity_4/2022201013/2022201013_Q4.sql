
DELIMITER //

CREATE PROCEDURE CUSTOMER_DB.forth ()
begin
    DECLARE fin INTEGER default 0;
    DECLARE grad decimal(10,0);
    DECLARE name, city, country, VARCHAR(100);
    DECLARE ncurses CURSOR FOR
        select cust_name, cust_city, cust_country, grade
        from customer
        where agent_code like "A00%";
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
    OPEN ncurses;
    lol: LOOP
        FETCH curse INTO name, city, country, grad;
        IF fin=1 then LEAVE lol;
        end IF;

        select name, city, country, grad;
    END LOOP;
    CLOSE ncurses;
end //

DELIMITER ;

CALL CUSTOMER_DB.forth();