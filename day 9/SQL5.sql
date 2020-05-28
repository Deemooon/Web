SELECT mu.lastname,mu.firstname,mu.patronomic,mg.name FROM moiseenko_student ms
INNER JOIN moiseenko_user mu ON ms.user_id = mu.user_id
INNER JOIN moiseenko_gruppa mg ON ms.gruppa_id = mg.gruppa_id
INNER JOIN moiseenko_graduate mg1 ON mg.gruppa_id = mg1.gruppa_id
INNER JOIN moiseenko_course mc ON mg1.course_id = mc.course_id
WHERE mc.name='Мультимедиа технологии'