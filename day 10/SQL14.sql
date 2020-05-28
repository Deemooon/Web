SELECT mu.lastname,mu.firstname,mu.patronomic,md.name,mg.name FROM moiseenko_student ms
INNER JOIN moiseenko_user mu ON ms.user_id = mu.user_id
INNER JOIN moiseenko_gruppa mg ON ms.gruppa_id = mg.gruppa_id
INNER JOIN moiseenko_graduate mg1 ON mg.gruppa_id = mg1.gruppa_id
INNER JOIN moiseenko_graduate_time mgt ON mg1.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id
WHERE md.name='Пятница'