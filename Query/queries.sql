
-- -- CHECK ON ALL TABLES AFTER IMPORTS
-- SELECT * FROM PrimeRate;
-- SELECT * FROM School;
-- SELECT * FROM SchoolWard;
-- SELECT * FROM House;

-- CREATING TABLE OF FEATURES FOR MACHINE LEARNING
-- SELECT 
-- 		ho.*,
-- 		pr.prime,
-- 		sw."Rank_(2018-19)"
-- INTO ML_data2
-- FROM house as ho
-- JOIN primerate as pr ON ho.saledate = pr.date
-- JOIN schoolward as sw ON ho.ward = sw.ward

-- -- CHECK TABLE FOR ALL JOINS
-- SELECT * FROM ML_DATA2

-- -- CREATING FINAL TABLE WITH COLUMN FOR ML PREDICTIONS
-- SELECT 
-- 		ho.bld_id,
-- 		ho.bathrm, 
-- 		ho.saledate, 
-- 		ho.landarea, 
-- 		ho.longitude, 
-- 		ho.latitude, 
-- 		ho.fireplaces, 
-- 		ho.rooms,
-- 		ho.priceprm, 
-- 		pr.prime,
-- 		sw."Rank_(2018-19)",
-- 		ho.price
-- 		pt.prediction
-- INTO FINAL_TABLE
-- FROM house as ho
-- INNER JOIN primerate as pr ON ho.saledate = pr.date
-- INNER JOIN schoolward as sw ON ho.ward = sw.ward;
-- INNER JOIN pred_table as pt ON ho.saledate= pt.salesdate
-- -- ADDING PREDICTION COLUMN TO FINAL TABLE
-- ALTER TABLE final_table
-- ADD Pred FLOAT;

-- CHECK FINAL TABLE AFTER UPDATE FROM JUPYTER NOTEBOOK
-- SELECT * FROM final_table
-- WHERE bld_id = 37684;
