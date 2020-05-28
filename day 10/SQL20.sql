SELECT mo.otdel_id, mo.name FROM moiseenko_otdel mo
INNER JOIN moiseenko_teacher mt ON mo.otdel_id = mt.otdel_id
INNER JOIN moiseenko_otdel mo1 ON mt.otdel_id = mo1.otdel_id
INNER JOIN moiseenko_graduate mg ON mt.user_id = mg.user_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_lesson_num mln ON mgt.lesson_num_id = mln.lesson_num_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id
WHERE mln.time_lesson>='09:00' AND mln.time_lesson<='12:00' AND md.name='Вторник'