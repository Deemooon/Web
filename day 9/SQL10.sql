SELECT * FROM moiseenko_course mc
 LEFT JOIN moiseenko_graduate mg 
 ON mc.course_id = mg.course_id
 WHERE mg.graduate_id IS NULL