SELECT
    R.name AS room_name,
    CS.day_of_week,
    CS.start_time,
    CS.end_time,
    'Occupied' AS status
FROM
    ROOM AS R
JOIN
    CLASS_SCHEDULE AS CS ON R.id = CS.room_id
ORDER BY
    R.name, CS.day_of_week, CS.start_time;