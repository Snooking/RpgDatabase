use RPG

/*Wypisz wszystkie przedmioty, w kolejno�ci od najwi�kszego atrybutu si�y do najmniejszego.*/
SELECT nazwa as 'Nazwa', si�a as 'Si�a' 
	FROM przedmioty JOIN STATYSTYKI ON
	przedmioty.staty = statystyki.id 
	ORDER BY si�a DESC
