SELECT mt.user_id, mu.lastname, mu.firstname, mu.patronomic FROM moiseenko_teacher mt
LEFT JOIN moiseenko_user mu ON mt.user_id = mu.user_id
LEFT JOIN moiseenko_graduate mg ON mt.user_id = mg.user_id
WHERE mg.course_id IS NULL