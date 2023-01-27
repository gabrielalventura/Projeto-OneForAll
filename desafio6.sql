SELECT
  MIN(v.price) AS 'faturamento_minimo',
  MAX(v.price) AS 'faturamento_maximo',
  ROUND(AVG(v.price), 2) AS 'faturamento_medio',
  SUM(v.price) AS 'faturamento_total'
FROM SpotifyClone.plans AS v
  INNER JOIN SpotifyClone.profiles AS p ON v.plan_id = p.plan_id;