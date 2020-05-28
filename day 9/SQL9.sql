SELECT mt.user_id, mu.lastname, mu.firstname, mu.patronomic FROM moiseenko_teacher mt
LEFT JOIN moiseenko_otdel mo ON mt.otdel_id = mo.otdel_id
LEFT JOIN moiseenko_user mu ON mt.user_id = mu.user_id
WHERE mo.otdel_id IS NULL