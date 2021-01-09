-- Manipulation: Creating table 

CREATE TABLE stocks (
	symbol TEXT,
	name TEXT,
	datetime DATETIME,
	price INTEGER);

-- Manipulation: Collecting stock data and inserting into table

INSERT INTO stocks (symbol, name, datetime, price)
VALUES
	("+", "Apple Inc. (AAPL)", "2020-12-01 21:00:00", 122.72),
	("-", "Apple Inc. (AAPL)", "2020-11-02 21:00:00", 108.77),
	("+", "Apple Inc. (AAPL)", "2020-10-01 21:00:00", 116.79),
	("+", "Apple Inc. (AAPL)", "2020-09-01 21:00:00", 134.18),
	("+", "Apple Inc. (AAPL)", "2020-08-03 21:00:00", 108.94),
	("-", "Apple Inc. (AAPL)", "2020-07-01 21:00:00", 91.03);

INSERT INTO stocks (symbol, name, datetime, price)
VALUES	
	("-", "Domino's Pizza (DPZ)", "2020-12-01 21:00:00", 391.75),
	("-", "Domino's Pizza (DPZ)", "2020-11-02 21:00:00", 376.03),
	("+", "Domino's Pizza (DPZ)", "2020-10-01 21:00:00", 426.99),
	("+", "Domino's Pizza (DPZ)", "2020-09-01 21:00:00", 410.15),
	("+", "Domino's Pizza (DPZ)", "2020-08-03 21:00:00", 387.03),
	("+", "Domino's Pizza (DPZ)", "2020-07-01 21:00:00", 375.71);

INSERT INTO stocks (symbol, name, datetime, price)
VALUES
	("+", "easyJet plc (EZJ.L)", "2020-12-01 21:00:00", 862.60),
	("+", "easyJet plc (EZJ.L)", "2020-11-02 21:00:00", 506.40),
	("-", "easyJet plc (EZJ.L)", "2020-10-01 21:00:00", 501.20),
	("-", "easyJet plc (EZJ.L)", "2020-09-01 21:00:00", 603.40),
	("+", "easyJet plc (EZJ.L)", "2020-08-03 21:00:00", 507.20),
	("-", "easyJet plc (EZJ.L)", "2020-07-01 21:00:00", 669.60);

INSERT INTO stocks (symbol, name, datetime, price)
VALUES
	("+", "Rolls-Royce Holdings plc (RR.)", "2020-12-01 21:00:00", 112.10),
	("+", "Rolls-Royce Holdings plc (RR.)", "2020-11-02 21:00:00", 76.56),
	("-", "Rolls-Royce Holdings plc (RR.)", "2020-10-01 21:00:00", 116.80),
	("-", "Rolls-Royce Holdings plc (RR.)", "2020-09-01 21:00:00", 206.70),
	("-", "Rolls-Royce Holdings plc (RR.)", "2020-08-03 21:00:00", 230.40),
	("+", "Rolls-Royce Holdings plc (RR.)", "2020-07-01 21:00:00", 285.60);

INSERT INTO stocks (symbol, name, datetime, price)
VALUES
	("-", "Zoom Video Communications, Inc. (ZM)", "2020-12-01 21:00:00", 406.31),
	("-", "Zoom Video Communications, Inc. (ZM)", "2020-11-02 21:00:00", 453.00),
	("+", "Zoom Video Communications, Inc. (ZM)", "2020-10-01 21:00:00", 482.99),
	("+", "Zoom Video Communications, Inc. (ZM)", "2020-09-01 21:00:00", 457.69),
	("+", "Zoom Video Communications, Inc. (ZM)", "2020-08-03 21:00:00", 268.00),
	("+", "Zoom Video Communications, Inc. (ZM)", "2020-07-01 21:00:00", 259.13);


-- Basic Requirement: 1. What are the distinct stocks in the table?

SELECT DISTINCT name 
FROM stocks;

/* Returned result with name column. Table contained 5 rows of the name of distinct stock: 
Apple, Domino's, easyJet, Rolls-Royce and Zoom */

-- Basic Requirement: 2. Query all data for a single stock. Do you notice any overall trends?

SELECT * 
FROM stocks
WHERE name = "Apple Inc. (AAPL)";

/* Not enough data to identify trend. However, there seems to be a three-month cycle.*/

-- Basic Requirement: 3. Which rows have price above 100? between 40-50, etc?

SELECT * FROM stocks
WHERE price > 100;

SELECT * FROM stocks
WHERE price > 40 AND price < 50 ;

-- Basic Requirement: 4. Sort the table by price. What are the minimum and maximum prices?

SELECT * FROM stocks
ORDER BY price DESC;
-- This sorts table by highest price descending

SELECT * FROM stocks
ORDER BY price ASC;
-- This sorts table by lowest price ascending

SELECT name, MAX(price) FROM stocks;
-- This returns max price with name 

SELECT name, MIN(price) FROM stocks;
-- This returns min price with name 

-- Intermediate Challenge: 1 and 2. Look at key statistics about data and group by stock

SELECT name, 
	MAX(price), MIN(price), AVG(price)
FROM stocks
GROUP BY name
ORDER BY name;
-- Looks at the min, max and average closing price for each stock 

-- Intermediate Challenge: 3. Group the data by day or hour of day. Does day of week or time of day impact prices?

INSERT INTO stocks 
VALUES
	("-", "Apple Inc. (AAPL)", "2020-12-31 21:00:00", 132.69),
	("+", "Apple Inc. (AAPL)", "2020-12-15 21:00:00", 127.88),
	("+", "Apple Inc. (AAPL)", "2020-11-30 21:00:00", 119.05),
	("+", "Apple Inc. (AAPL)", "2020-11-16 21:00:00", 120.30),
	("-", "Apple Inc. (AAPL)", "2020-10-30 21:00:00", 108.86),
	("-", "Apple Inc. (AAPL)", "2020-10-15 21:00:00", 120.71),
	("+", "Apple Inc. (AAPL)", "2020-09-30 21:00:00", 115.81),
	("+", "Apple Inc. (AAPL)", "2020-09-15 21:00:00", 115.54),
	("+", "Apple Inc. (AAPL)", "2020-08-31 21:00:00", 129.04),
	("-", "Apple Inc. (AAPL)", "2020-08-17 21:00:00", 114.61),
	("+", "Apple Inc. (AAPL)", "2020-07-31 21:00:00", 106.26),
	("+", "Apple Inc. (AAPL)", "2020-07-15 21:00:00", 97.72),
	("-", "Domino's Pizza (DPZ)", "2020-12-31 21:00:00", 383.46),
	("+", "Domino's Pizza (DPZ)", "2020-12-15 21:00:00", 384.68),
	("+", "Domino's Pizza (DPZ)", "2020-11-30 21:00:00", 392.57),
	("-", "Domino's Pizza (DPZ)", "2020-11-16 21:00:00", 384.82),
	("-", "Domino's Pizza (DPZ)", "2020-10-30 21:00:00", 378.32),
	("-", "Domino's Pizza (DPZ)", "2020-10-15 21:00:00", 401.84),
	("+", "Domino's Pizza (DPZ)", "2020-09-30 21:00:00", 425.28),
	("+", "Domino's Pizza (DPZ)", "2020-09-15 21:00:00", 389.52),
	("-", "Domino's Pizza (DPZ)", "2020-08-31 21:00:00", 408.96),
	("+", "Domino's Pizza (DPZ)", "2020-08-17 21:00:00", 309.39),
	("+", "Domino's Pizza (DPZ)", "2020-07-31 21:00:00", 386.61),
	("+", "Domino's Pizza (DPZ)", "2020-07-15 21:00:00", 413.68),	

-- Adding additional data for Apple and Domino's stocks


	
	
