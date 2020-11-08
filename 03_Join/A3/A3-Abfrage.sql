SELECT
    bundesland.name, 
    (landeshauptstadt.einwohnerInTsd * 100 / bundesland.einwohnerInTsd) AS "Prozent"
FROM bundesland
INNER JOIN landeshauptstadt
    ON kuerzel = landeshauptstadt.fk_bundesland_kuerzel;

