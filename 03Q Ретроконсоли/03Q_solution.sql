-- database: Consoles.db
SELECT
    SNES.Name,
    Developer.Name
FROM
    SNES
    JOIN Developer ON Developer.ID = SNES.Developer
    JOIN SegaGenesis ON Developer.ID = SegaGenesis.Developer
    AND SegaGenesis.Name = SNES.Name;
