SELECT cI.countriesAndTerritories AS "Countries and Territories", ROUND((SUM(cI.cases)*100.0/countryInfo.popData2020),2) AS "% Cases of Population",ROUND((SUM(cI.deaths)*100.0/countryInfo.popData2020),2) AS "% Deaths of Population"
FROM countryInfo INNER JOIN covidInfo cI on countryInfo.countriesAndTerritories = cI.countriesAndTerritories
GROUP BY cI.countriesAndTerritories;