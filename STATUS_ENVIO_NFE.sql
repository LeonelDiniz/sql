SELECT
	count(statusmail) total,
	CASE
		statusmail WHEN 1 THEN 'Não enviado'
		WHEN 2 THEN 'Emails entregues'
		WHEN 3 THEN 'Com falha'
	END status_envio
FROM
	SPED_APEX.sped050
WHERE
	date_nfe >= '20210101'
	AND statusmail != 0
	AND email != ' '
	AND d_e_l_e_t_ = ' '
GROUP BY
	statusmail