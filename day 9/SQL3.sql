SELECT moiseenko_course.name AS course_name,moiseenko_course.hours,moiseenko_special.name AS special_name FROM moiseenko_course
INNER JOIN moiseenko_special ON moiseenko_course.special_id = moiseenko_special.special_id
INNER JOIN moiseenko_otdel ON moiseenko_special.otdel_id = moiseenko_otdel.otdel_id
WHERE moiseenko_otdel.name='Технические специальности'