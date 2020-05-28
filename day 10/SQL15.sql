SELECT * FROM moiseenko_day md
LEFT JOIN moiseenko_graduate_time mgt ON md.day_id = mgt.day_id
LEFT JOIN moiseenko_graduate mg ON mgt.graduate_id = mg.graduate_id
LEFT JOIN moiseenko_course mc ON mg.course_id = mc.course_id
WHERE mgt.day_id is NULL