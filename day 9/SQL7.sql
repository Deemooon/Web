SELECT mo.name, COUNT(*) AS cnt FROM moiseenko_user mu
INNER JOIN moiseenko_student ms ON mu.user_id = ms.user_id
INNER JOIN moiseenko_gruppa mg ON ms.gruppa_id = mg.gruppa_id
INNER JOIN moiseenko_special ms1 ON mg.special_id = ms1.special_id
INNER JOIN moiseenko_otdel mo ON ms1.otdel_id = mo.otdel_id
GROUP BY mo.otdel_id