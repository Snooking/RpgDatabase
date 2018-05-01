use RPG

/*Wszystkie postaci, które maj¹ wiêcej ni¿ jedno zadanie*/
SELECT istota.nazwa as 'Nazwa' FROM istota, postaci, ZADANIA_POSTACI
	WHERE istota.id = postaci.istota
	AND
	ZADANIA_POSTACI.postaæ = POSTACI.id
	GROUP BY istota.nazwa HAVING COUNT(*)<2
