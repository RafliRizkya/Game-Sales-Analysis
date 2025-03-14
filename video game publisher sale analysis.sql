select Publisher, 
count(Name) as total_games, 
sum(Total_Sales) as total_sales,
avg(Total_Sales) as avg_sales
from game_sales
group by Publisher
order by total_games desc; 