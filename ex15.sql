SELECT covidInfo.dateRep AS "Date", covidInfo.cases AS "Cases"
FROM covidInfo INNER JOIN dateInfo dI on dI.dateRep = covidInfo.dateRep
WHERE countriesAndTerritories='United_Kingdom'
ORDER BY dI.year, dI.month, dI.day ;