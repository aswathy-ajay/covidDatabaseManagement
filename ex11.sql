CREATE TABLE dateInfo (
    dateRep TEXT,
    day INTEGER,
    month INTEGER,
    year INTEGER,
    PRIMARY KEY (dateRep)
);

CREATE TABLE countryInfo (
    countriesAndTerritories TEXT,
    geoId INTEGER,
    continentExp INTEGER,
    countryTerritoryCode INTEGER,
    popData2020 INTEGER,
    PRIMARY KEY (countriesAndTerritories)
);

CREATE TABLE covidInfo (
    dateRep TEXT,
    countriesAndTerritories TEXT,
    cases INTEGER,
    deaths INTEGER,
    PRIMARY KEY (dateRep,countriesAndTerritories),
    FOREIGN KEY (dateRep) REFERENCES dateInfo(dateRep),
    FOREIGN KEY (countriesAndTerritories) REFERENCES countryInfo(countriesAndTerritories)
);