CREATE FUNCTION split_varchar(str NVARCHAR(1000))
RETURNS VARCHAR(2000)
CHARACTER SET utf8
BEGIN
	SET @new_str = '';
	SET @i = 1;
	SET @length = CHAR_LENGTH(str);

	WHILE @i <= @length
	DO
		SET @new_str = CONCAT(@new_str,IF(@i = 1,'',' '),HEX(CONVERT(RIGHT(LEFT(str,@i),1) USING ucs2)));
		SET @i = @i + 1;
	END WHILE;

RETURN(@new_str);

END
