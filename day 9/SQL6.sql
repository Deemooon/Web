SELECT mu.user_id,mu.firstname,mu.patronomic FROM moiseenko_user mu
INNER JOIN moiseenko_teacher mt ON mu.user_id = mt.user_id
INNER JOIN moiseenko_graduate mg ON mt.user_id = mg.user_id
INNER JOIN moiseenko_graduate_time mgt ON mg.graduate_id = mgt.graduate_id
INNER JOIN moiseenko_gruppa mg1 ON mg.gruppa_id = mg1.gruppa_id
INNER JOIN moiseenko_lesson_num mln ON mgt.lesson_num_id = mln.lesson_num_id
WHERE mln.time_lesson>='08:30:00' AND mln.time_lesson<='15:30:00'