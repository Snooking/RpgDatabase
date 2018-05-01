use RPG

/*Wszystkie postaci, kt�re maj� wi�cej ni� jedno zadanie*/
SELECT istota.nazwa as 'Nazwa' FROM istota, postaci, ZADANIA_POSTACI
	WHERE istota.id = postaci.istota
	AND
	ZADANIA_POSTACI.posta� = POSTACI.id
	GROUP BY istota.nazwa HAVING COUNT(*)<2
