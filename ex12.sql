INSERT INTO dateInfo SELECT DISTINCT dateRep, day, month, year FROM dataset;

INSERT INTO countryInfo SELECT DISTINCT countriesAndTerritories, geoId, continentExp, countryTerritoryCode, popData2020 FROM dataset;

INSERT INTO covidInfo SELECT DISTINCT dateRep, countriesAndTerritories, cases, deaths FROM dataset;