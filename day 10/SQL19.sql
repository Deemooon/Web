SELECT mc.name,mc.hours,ms.name, md.name,mo.name FROM moiseenko_special ms
INNER JOIN moiseenko_course mc ON ms.special_id = mc.special_id
INNER JOIN moiseenko_graduate mg ON mc.course_id = mg.course_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id
INNER JOIN moiseenko_teacher mt ON mg.user_id = mt.user_id
INNER JOIN moiseenko_otdel mo ON mt.otdel_id = mo.otdel_id
INNER JOIN moiseenko_user mu ON mt.user_id = mu.user_id
WHERE mo.name='Технические специальности' AND (md.name='Среда' OR md.name='Пятница')