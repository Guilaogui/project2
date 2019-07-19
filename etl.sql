create database ETL_Group_Project;

use ETL_Group_Project;

--Let's Create Tables for Data to be Loaded into

create table country (
  Country varchar(100) PRIMARY KEY,
  Rank int(15),
  GDP_Weighted_Share double
    );
    
CREATE TABLE gdp (
    Country varchar (100) PRIMARY KEY,
    Confederation varchar(100),
    GDP_Weighted_Share double
  );
  
-- Joins Tables
SELECT country.Country, country.Rank, country.GDP_Weighted_Share,gdp.Confederation,gdp.GDP_Weighted_Share
FROM country
JOIN gdp
ON country.Country = gdp.Country;