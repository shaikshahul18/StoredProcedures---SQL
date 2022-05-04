/* USE WorldEvents; */

CREATE PROC uspCountriesAsia
AS
BEGIN	
	SELECT CountryName
	FROM tblCountry
	WHERE ContinentID = 1
	ORDER BY CountryName
END;

EXEC uspCountriesAsia;