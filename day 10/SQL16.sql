SELECT mc.name,md.name,ms.name FROM moiseenko_special ms
INNER JOIN moiseenko_course mc ON ms.special_id = mc.special_id
INNER JOIN moiseenko_graduate mg ON mc.course_id = mg.course_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id
WHERE md.name='Вторник'