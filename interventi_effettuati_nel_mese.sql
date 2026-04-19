delimiter //
CREATE EVENT interventi_effettuati_nel_mese 
ON SCHEDULE EVERY 1 MONTH STARTS '2025-05-31 00:00:00'
DO 
	BEGIN 
		declare importi_non_pagati DOUBLE;
		declare totale DOUBLE;
		select sum(i.costo) into totale
        from intervento i JOIN visita_preliminare vpr ON (i.visita_preliminare = vpr.id_visita)
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)<=30;
        
        select sum(r.importo) into importi_non_pagati
        from (rata r JOIN intervento i ON r.intervento=i.id_intervento) JOIN visita_preliminare vpr ON (i.visita_preliminare = vpr.id_visita)
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)<=30 and r.data_pagamento is null;
        
        insert into interventi_mese values (importi_non_pagati/totale*100,totale);
END //
delimiter ;