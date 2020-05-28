SELECT mc.name,mln.time_lesson,mln.name FROM moiseenko_course mc
INNER JOIN moiseenko_graduate mg ON mc.course_id = mg.course_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_lesson_num mln ON mgt.lesson_num_id = mln.lesson_num_id
WHERE mln.time_lesson>='12:30' AND mln.time_lesson<='18:30'