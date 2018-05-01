use RPG

/*Wypisz istot� z najwy�szym poziomem*/
SELECT nazwa as 'Nazwa' FROM istota JOIN statystyki ON
	istota.staty = statystyki.id
	AND 
	statystyki.poziom = (SELECT MAX(poziom) FROM statystyki)