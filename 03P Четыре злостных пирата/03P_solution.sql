-- database: example.db
SELECT s.pirate_name FROM sector s
  WHERE s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 1) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 2) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 3)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 1) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 1) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 2)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 2) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 1) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 1)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 3) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 2) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 1)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 10) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 10) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 20)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 20) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 10) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 10)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 30) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 20) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id - 10)
  OR s.is_ship AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 10) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 20) AND (SELECT is_ship FROM sector vs WHERE vs.id = s.id + 30)
  ORDER BY s.pirate_name;

SELECT DISTINCT s.pirate_name
FROM Sector s
JOIN Sector s2 ON (s.latitude = s2.latitude AND s.longitude = s2.longitude - 1) OR (s.longitude = s2.longitude AND s.latitude = s2.latitude - 1)
JOIN Sector s3 ON (s.latitude = s3.latitude AND s.longitude = s3.longitude - 2) OR (s.longitude = s3.longitude AND s.latitude = s3.latitude - 2)
JOIN Sector s4 ON (s.latitude = s4.latitude AND s.longitude = s4.longitude - 3) OR (s.longitude = s4.longitude AND s.latitude = s4.latitude - 3)
WHERE s.is_ship = 1 AND s2.is_ship = 1 AND s3.is_ship = 1 AND s4.is_ship = 1
ORDER BY s.pirate_name;
