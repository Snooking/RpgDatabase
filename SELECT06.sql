use RPG

/*Wypisz ilu NPC uczy umiej�cton�ci*/
SELECT COUNT(*) as 'Ilu NPC uczy umiej�tno�ci' FROM NPC WHERE 
	NPC.nazwaUmiejetnosci IS NOT NULL