SELECT
	date_nfe ,
	time_nfe ,
	doc_id ,
	cnpjdest ,
	a1_nome ,
	doc_chv ,
	CASE
		status WHEN 1 THEN '1 - Nfe Recebida'
		WHEN 2 THEN '2 - Nfe Assinada'
		WHEN 3 THEN '3 - Nfe com falha no schema'
		WHEN 4 THEN '4 - Nfe Transmitida'
		WHEN 5 THEN '5 - Nfe com problemas'
		WHEN 6 THEN '6 - Nfe autorizada'
		WHEN 7 THEN '7 - Nfe Cancelamento'
	END status ,
	statuscanc ,
	CASE
		statusmail WHEN 1 THEN '1 - A Transmitir'
		WHEN 2 THEN '2 - Transmitido'
		WHEN 3 THEN '3 - Falha entrega'
	END statusmail ,
	nfe_prot ,
	email
FROM
	SPED_APEX.sped050
JOIN protheus_apex.sa1010 ON
	a1_cgc = cnpjdest
WHERE
	sped050.d_e_l_e_t_ = ' '
ORDER BY
	doc_id DESC