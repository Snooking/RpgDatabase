use RPG

/*Wypisz wszystkich NPC, którzy daj¹ wiêcej ni¿ jedno zadanie*/
SELECT DISTINCT istota.nazwa as 'Nazwa' FROM istota, zadania, NPC WHERE
	NPC.istota = istota.id
	AND
	NPC.id IN (SELECT zadania.npc FROM zadania GROUP BY zadania.npc HAVING COUNT(zadania.NPC) > 1)