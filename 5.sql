DROP FUNCTION IF EXISTS pandemic.year_diff;
DELIMITER $$

CREATE FUNCTION pandemic.year_diff(in_year YEAR)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN TIMESTAMPDIFF(
    YEAR,
    STR_TO_DATE(CONCAT(in_year, '-01-01'), '%Y-%m-%d'),
    CURRENT_DATE()
  );
END$$

DELIMITER ;

SELECT
  ic.year,
  year_diff(ic.year) AS years_since_jan1
FROM pandemic.infectious_cases_norm AS ic
GROUP BY ic.year
ORDER BY ic.year;