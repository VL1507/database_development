UPDATE Animals
SET Sex = "unknown"
WHERE Sex IS NOT NULL
    AND Sex != "male"
    AND Sex != "female";
UPDATE Animals
SET Sex = "m"
WHERE Sex = "male";
UPDATE Animals
SET Sex = "w"
WHERE Sex = "female";