SELECT * FROM moiseenko_special ms
LEFT JOIN moiseenko_course mc ON ms.special_id = mc.special_id
WHERE mc.course_id IS NULL