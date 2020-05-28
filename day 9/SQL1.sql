SELECT moiseenko_user.lastname,moiseenko_user.firstname,moiseenko_user.patronomic,moiseenko_gender.name,moiseenko_otdel.name FROM moiseenko_teacher INNER JOIN moiseenko_otdel 
ON moiseenko_teacher.otdel_id=moiseenko_otdel.otdel_id
INNER JOIN moiseenko_user ON moiseenko_user.user_id=moiseenko_teacher.user_id
INNER JOIN moiseenko_gender ON moiseenko_user.gender_id=moiseenko_gender.gender_id

WHERE moiseenko_otdel.name='Информационные системы'