/* stored procedure
--------------------
Delimiter &&
create procedure procedure_name [[IN| out| Inout] parameter_name
datatype [,paralmeter datatype]) ]
begin
	DECLARTION_SECTION
    EXECUTABLE_SECTION
END &&
DELIMITER ;

*/
USE D;
CALL BOT(1);
select * from office;