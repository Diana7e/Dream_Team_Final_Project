
-- -- Creating tables for HousePriceCalculatorDB

-- -- Creating PrimeRate table
-- -- DROP TABLE PrimeRate;
-- CREATE TABLE PrimeRate (
-- 	Date INT NOT NULL,
--  Prime FLOAT NOT NULL,
-- PRIMARY KEY (Date)
-- );

-- Creating School table
-- DROP TABLE School;
-- CREATE TABLE School (
-- 	School VARCHAR NOT NULL,
-- 	Address VARCHAR NOT NULL,
-- 	City VARCHAR NOT NULL,
-- 	District VARCHAR NOT NULL,
-- 	Zip INTEGER  NOT NULL,
-- 	County VARCHAR NOT NULL,
-- 	Longitude FLOAT NOT NULL,
-- 	Latitude FLOAT NOT NULL,
-- 	"Rank(2018-19)" INT NOT NULL,
-- 	SchoolDigger_StarRating INTNOT NULL,
-- 	PRIMARY KEY (School)
-- );

-- -- Creating SchoolWard table
-- -- DROP TABLE SchoolWard;
--  CREATE TABLE SchoolWard (
-- 	School VARCHAR NOT NULL,
--  Ward INT NOT NULL,
-- 	"Rank_(2018-19)" INT NOT NULL,
--  PRIMARY KEY (Ward),
--  FOREIGN KEY (School) REFERENCES School(School)
-- );

-- -- Delete table if it already exist
--  DROP TABLE House ;
-- CREATE TABLE House (
--  	Bld_id BIGINT NOT NULL,
-- 	Bathrm BIGINT NOT NULL,
-- 	HF_Bathrm BIGINT NOT NULL,
-- 	AC TEXT NOT NULL,
-- 	Rooms BIGINT NOT NULL,
-- 	Bedrm BIGINT NOT NULL,
-- 	Saledate BIGINT NOT NULL,
-- 	Kitchens FLOAT NOT NULL,
-- 	Fireplaces BIGINT NOT NULL,
-- 	Landarea BIGINT NOT NULL,
-- 	Longitude FLOAT NOT NULL,
-- 	Latitude FLOAT NOT NULL,
-- 	Quadrant TEXT NOT NULL,
-- 	Price FLOAT NOT NULL,
-- 	PricePRM FLOAT NOT NULL,
-- 	Zipcode FLOAT NOT NULL,
-- 	Ward BIGINT NOT NULL,
-- 	PRIMARY KEY (Bld_id),
-- 	FOREIGN KEY (Ward) REFERENCES SchoolWard(Ward),
-- 	FOREIGN KEY (Saledate) REFERENCES PrimeRate(Date)
-- );

-- Check on all tables after imports

-- SELECT * FROM PrimeRate;
-- SELECT * FROM School;
-- SELECT * FROM SchoolWard;
-- SELECT * FROM House;

-- Changed datatype to accomodate input
-- ALTER TABLE house
-- ALTER COLUMN "ac" TYPE varchar;

-- Add missing values for primerate table
-- INSERT INTO PrimeRate(date, prime)
-- VALUES (2009, 3.25);