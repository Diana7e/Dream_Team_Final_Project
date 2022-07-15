
-- -- Creating tables for HousePriceCalculatorDB

-- -- Creating PrimeRate table
-- CREATE TABLE PrimeRate (
-- 	Date int NOT NULL,
--  Prime float NOT NULL,
-- PRIMARY KEY (Date)
-- );

---- Creating School table
--  Drop Table School;
-- CREATE TABLE School (
-- 	School varchar NOT NULL,
-- 	Address varchar NOT NULL,
-- 	City varchar NOT NULL,
-- 	District varchar NOT NULL,
-- 	Zip integer  NOT NULL,
-- 	County varchar NOT NULL,
-- 	Longitude float NOT NULL,
-- 	Latitude float NOT NULL,
-- 	"Rank(2018-19)" int NOT NULL,
-- 	SchoolDigger_StarRating int NOT NULL,
-- 	PRIMARY KEY (School)
-- );

-- -- Creating SchoolWard table
--  CREATE TABLE SchoolWard (
-- 	School varchar NOT NULL,
--  Ward int NOT NULL,
-- 	"Rank_(2018-19)" int NOT NULL,
--  PRIMARY KEY (Ward),
--  FOREIGN KEY (School) REFERENCES School(School)
-- );

-- -- Delete table if it already exist
-- DROP TABLE House ;
-- CREATE TABLE House (
--  	Bld_id BIGINT NOT NULL,
-- 	Bathrm BIGINT NOT NULL,
-- 	HF_Bathrm BIGINT NOT NULL,
-- 	AC TEXT NOT NULL,
-- 	Rooms BIGINT NOT NULL,
-- 	Bedrm BIGINT NOT NULL,
-- 	Saledate BIGINT NOT NULL,
-- 	Kitchens float NOT NULL,
-- 	Fireplaces BIGINT NOT NULL,
-- 	Landarea BIGINT NOT NULL,
-- 	Longitude FLOAT NOT NULL,
-- 	Latitude FLOAT NOT NULL,
-- 	Quadrant TEXT NOT NULL,
-- 	Price FLOAT NOT NULL,
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