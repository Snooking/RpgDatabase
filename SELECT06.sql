use RPG

/*Wypisz ilu NPC uczy umiejêctonœci*/
SELECT COUNT(*) as 'Ilu NPC uczy umiejêtnoœci' FROM NPC WHERE 
	NPC.nazwaUmiejetnosci IS NOT NULL