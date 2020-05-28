SELECT mg.name, COUNT(*) AS cnt FROM moiseenko_gruppa mg
INNER JOIN moiseenko_graduate mg1 ON mg.gruppa_id = mg1.gruppa_id
GROUP BY  mg.gruppa_id