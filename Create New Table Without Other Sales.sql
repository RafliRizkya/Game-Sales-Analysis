create table game_sales as 
select
`Rank`,
Name,
Platform,
Year,
Genre,
Publisher,
NA_Sales,
EU_Sales,
JP_Sales,
(NA_Sales + EU_Sales + JP_Sales) as Total_Sales
from vgsales;

select * from game_sales;
