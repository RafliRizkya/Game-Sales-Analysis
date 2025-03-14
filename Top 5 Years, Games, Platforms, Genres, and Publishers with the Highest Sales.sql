-- Top 5 Tahun rilis dengan penjualan terbesar --
SELECT * FROM game_sales WHERE Year IS NULL AND Total_Sales IS NULL; 

SELECT Year, SUM(Total_Sales) AS total_sales
FROM game_sales
GROUP BY Year
ORDER BY total_sales DESC
LIMIT 5; 

-- Top 5 game dengan penjualan terbesar --
SELECT * FROM game_sales WHERE Name IS NULL AND Total_Sales IS NULL;

SELECT Name, Publisher, Genre, Year, Total_Sales
FROM game_sales
ORDER BY Total_Sales DESC
LIMIT 5;

-- Top 5 Platform dengan penjualan terbesar --
SELECT * FROM game_sales WHERE Platform IS NULL;

SELECT Platform, SUM(Total_Sales) AS total_sales
FROM game_sales
GROUP BY Platform
ORDER BY total_sales DESC
LIMIT 5;

-- Top 5 Genre dengan penjualan terbesar --
SELECT * FROM game_sales WHERE Genre IS NULL;

SELECT Genre, SUM(Total_Sales) AS total_sales
FROM game_sales
GROUP BY Genre
ORDER BY total_sales DESC
LIMIT 5;

-- Top 5 Publisher dengan penjualan terbesar --
SELECT * FROM game_sales WHERE Publisher IS NULL;

SELECT Publisher, SUM(Total_Sales) AS total_sales
FROM game_sales
GROUP BY Publisher
ORDER BY total_sales DESC
LIMIT 5;
