/*Stwórz widok, w którym bêd¹ nicki graczy oraz nazwy przedmiotów przez nich posiadane.*/
CREATE VIEW PrzedmiotyGracza (Nick, Przedmiot) AS
	SELECT istota.nazwa, przedmioty.nazwa FROM istota, PRZEDMIOTY, PRZEDMIOTY_ISTOTY, postaci WHERE
	istota.id = PRZEDMIOTY_ISTOTY.istota
	AND 
	przedmioty.id = PRZEDMIOTY_ISTOTY.przedmiot
	AND
	istota.id = POSTACI.id