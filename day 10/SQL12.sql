SELECT mu.lastname,mu.firstname,mu.patronomic,mg.name,mln.time_lesson FROM moiseenko_student ms
INNER JOIN moiseenko_user mu ON ms.user_id = mu.user_id
INNER JOIN moiseenko_gender mg ON mu.gender_id = mg.gender_id
INNER JOIN moiseenko_gruppa mg1 ON ms.gruppa_id = mg1.gruppa_id
INNER JOIN moiseenko_graduate mg2 ON mg1.gruppa_id = mg2.gruppa_id
INNER JOIN moiseenko_graduate_time mgt ON mg2.graduate_id = mgt.graduate_id 
INNER JOIN moiseenko_lesson_num mln ON mgt.lesson_num_id = mln.lesson_num_id
WHERE mln.time_lesson>='10:30' AND mln.time_lesson<='18:30' AND mg.name='Женский'