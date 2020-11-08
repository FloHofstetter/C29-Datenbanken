SELECT
    name,
    count(name) AS 'Anzahl Nachbarn'
FROM bundesland
FULL JOIN nachbar ON kuerzel = nachbar.fk_bl1 OR kuerzel = nachbar.fk_bl2
GROUP BY name;

