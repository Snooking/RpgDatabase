use RPG

/*Wszystkie postaci, kt�re maj� wi�cej ni� jeden skill*/
SELECT istota.nazwa as 'Nazwa' FROM istota, postaci, UMIEJ�TNO�CI_POSTACI
	WHERE istota.id = postaci.istota
	AND
	UMIEJ�TNO�CI_POSTACI.posta� = POSTACI.id
	GROUP BY istota.nazwa HAVING COUNT(*)>2