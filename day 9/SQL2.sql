SELECT mu.lastname,mu.firstname,mu.patronomic,mg.name,ms.name FROM moiseenko_student ms1 
INNER JOIN moiseenko_gruppa mg ON ms1.gruppa_id = mg.gruppa_id
INNER JOIN moiseenko_special ms ON mg.special_id = ms.special_id
INNER JOIN moiseenko_otdel mo ON ms.otdel_id = mo.otdel_id
INNER JOIN moiseenko_user mu ON ms1.user_id = mu.user_id
WHERE mo.name='Информационные системы'