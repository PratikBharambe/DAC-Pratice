DROP PROCEDURE IF EXISTS temp;
DELIMITER $$

CREATE PROCEDURE temp()
BEGIN
    DECLARE msg VARCHAR(100);
    DECLARE d DATE;
    DECLARE q VARCHAR(200);

    SET msg = 'My first MySQL program.';
    SET d = NOW();

    SET @q = CONCAT('INSERT INTO temp VALUES(', "'", msg, "'", ', ', "'", DATE_FORMAT(d, '%Y-%m-%d'), "');");
    PREPARE stat FROM @q;
    EXECUTE stat;
    DEALLOCATE PREPARE stat;
END $$

DELIMITER ;