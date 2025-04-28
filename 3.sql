SELECT
  l.location_id,
  l.entity,
  l.code,
  AVG(ic.number_rabies)   AS avg_rabies,
  MIN(ic.number_rabies)   AS min_rabies,
  MAX(ic.number_rabies)   AS max_rabies,
  SUM(ic.number_rabies)   AS sum_rabies
FROM pandemic.infectious_cases_norm AS ic
JOIN pandemic.location AS l
  ON ic.location_id = l.location_id
WHERE ic.number_rabies IS NOT NULL
GROUP BY
  l.location_id,
  l.entity,
  l.code
ORDER BY
  avg_rabies DESC
LIMIT 10;