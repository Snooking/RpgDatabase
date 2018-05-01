use RPG

/*Wypisz wszystkie przedmioty, w kolejnoœci od najwiêkszego atrybutu si³y do najmniejszego.*/
SELECT nazwa as 'Nazwa', si³a as 'Si³a' 
	FROM przedmioty JOIN STATYSTYKI ON
	przedmioty.staty = statystyki.id 
	ORDER BY si³a DESC
