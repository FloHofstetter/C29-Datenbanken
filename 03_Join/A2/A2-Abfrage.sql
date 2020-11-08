SELECT name,
CASE
    WHEN flaeche > 25000 THEN 'Ja'
    ELSE 'Nein'
END AS 'ist grosß'
FROM bundesland;

