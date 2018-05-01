use RPG

/*Wszystkie postaci, które maj¹ wiêcej ni¿ jeden skill*/
SELECT istota.nazwa as 'Nazwa' FROM istota, postaci, UMIEJÊTNOŒCI_POSTACI
	WHERE istota.id = postaci.istota
	AND
	UMIEJÊTNOŒCI_POSTACI.postaæ = POSTACI.id
	GROUP BY istota.nazwa HAVING COUNT(*)>2