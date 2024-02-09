SELECT covidInfo.dateRep AS "Date", SUM(cases)  OVER (ORDER BY dI.year,di.month,di.day) AS "Cumulative UK Cases",
SUM(deaths) OVER (ORDER BY dI.year,di.month,di.day) AS "Cumulative UK Deaths"
FROM covidInfo INNER JOIN dateInfo dI on dI.dateRep = covidInfo.dateRep
WHERE countriesAndTerritories='United_Kingdom';