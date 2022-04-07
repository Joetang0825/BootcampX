SELECT name,
  id,
  email,
  cohort_id
FROM students
WHERE id NOT IN (
    SELECT id
    FROM students
    where email like '%gmail%'
  )
  AND phone IS NULL
  AND email IS NOT NULL;