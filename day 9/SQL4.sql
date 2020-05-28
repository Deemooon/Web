SELECT moiseenko_gruppa.name,moiseenko_gruppa.date_begin, moiseenko_gruppa.date_end FROM moiseenko_special INNER JOIN moiseenko_gruppa
ON moiseenko_special.special_id = moiseenko_gruppa.special_id

WHERE moiseenko_special.name='Информационные системы'