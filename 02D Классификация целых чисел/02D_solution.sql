-- database: ./CFSRu2UWtZgsI4FjN7CvlQdG968915GY_example.db

SELECT Value,
    CASE
        WHEN Value > 0 THEN 'positive'
        WHEN Value < 0 THEN 'negative'
        ELSE 'zero'
    END AS Classification
FROM Numbers;