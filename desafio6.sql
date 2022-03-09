SELECT
	MIN(pln.price) AS faturamento_minimo,
	MAX(pln.price) AS faturamento_maximo,
  ROUND(SUM(pln.price) / COUNT(sig.user_id), 2) AS faturamento_medio,
  SUM(pln.price) AS faturamento_total
FROM SpotifyClone.Plans AS pln
INNER JOIN SpotifyClone.Signatures AS sig on pln.plan_id = sig.plan_id;
