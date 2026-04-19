delimiter //
CREATE EVENT visite_non_eseguite_in_un_anno 
ON SCHEDULE EVERY 1 YEAR starts current_timestamp  
DO 
	BEGIN 
		delete
        from visita_prliminare vpr
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)>365 and vpr.id_visita not in ( select visita_preliminare
																							  from intervento i
                                                                                              );
END //
delimiter ;
