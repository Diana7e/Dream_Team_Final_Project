
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

-- SELECT 
-- prime 
-- FROM 
-- Primerate
-- WHERE date = 2009;

-- CREATING TABLE OF FEATURES FOR MACHINE LEARNING
-- SELECT 
-- 		ho.bld_id,
-- 		ho.bathrm, 
-- 		ho.saledate, 
-- 		ho.landarea, 
-- 		ho.longitude, 
-- 		ho.latitude, 
-- 		ho.fireplaces, 
-- 		ho.rooms,
-- 		ho.price,
-- 		ho.priceprm, 
-- 		pr.prime,
-- 		sw."Rank_(2018-19)"
-- INTO ML_data
-- FROM house as ho
-- INNER JOIN primerate as pr ON ho.saledate = pr.date
-- INNER JOIN schoolward as sw ON ho.ward = sw.ward

-- -- CHECK TABLE FOR ALL JOINS
-- SELECT * FROM ML_DATA

-- -- CHECK ON RANKING
-- SELECT * FROM 
-- ML_DATA
-- WHERE 
-- "Rank_(2018-19)" = 2;