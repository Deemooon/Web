SELECT md.name, COUNT(*) as cnt FROM moiseenko_course mc
INNER JOIN moiseenko_graduate mg ON mc.course_id = mg.course_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_day md ON mgt.day_id = md.day_id

GROUP BY md.name