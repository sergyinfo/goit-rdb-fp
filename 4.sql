SELECT
  DISTINCT ic.year,
  DATE(CONCAT(ic.year, '-01-01'))                     AS jan1_date,
  CURRENT_DATE()                                      AS today,
  TIMESTAMPDIFF(
    YEAR,
    DATE(CONCAT(ic.year, '-01-01')),
    CURRENT_DATE()
  )                                                    AS years_diff
FROM pandemic.infectious_cases_norm AS ic
ORDER BY ic.year;