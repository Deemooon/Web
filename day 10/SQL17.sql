SELECT mu.lastname,mu.firstname,mu.patronomic,md.name,mo.name FROM moiseenko_teacher mt
INNER JOIN moiseenko_user mu ON mt.user_id = mu.user_id
INNER JOIN moiseenko_otdel mo ON mt.otdel_id = mo.otdel_id
INNER JOIN moiseenko_graduate mg ON mt.user_id = mg.user_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id
WHERE md.name='Суббота'