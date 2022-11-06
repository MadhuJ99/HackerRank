WITH RECURSIVE cte AS
(
  SELECT 1 AS n, CAST('*' AS CHAR(100)) AS str
  UNION ALL
  SELECT n + 1, concat('* ',str) FROM cte WHERE n < 20
)
SELECT str FROM cte;