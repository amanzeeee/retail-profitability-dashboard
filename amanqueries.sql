use aman;
select * from aman;
 Select min(`Order Date`) ,Max(`Order Date`) from aman;
 select category,round(sum(sales),2) as sales , round(sum(profit),2) as profit from aman
 group by category;
 
 
 select concat(discount * 100 , '%') as Discount  , avg(profit) as avg_profit from aman group by discount order by discount;
 select `sub-category` , sum(profit) as profit from aman
 group by `sub-category` order by profit asc;
 
 
 select category , concat(discount*100,'%') , avg(profit) as avg_profit from aman 
 group by category , discount 
 order by category , discount;
 
 -- profit margin by category
 select category , sum(sales) as sales ,sum(profit) as profit , (sum(profit) / sum(sales)) * 100 as profit_margin
 from aman
 group by category;
 
-- --top loss making products 
SELECT 
    `Sub-Category`,
    SUM(Profit) AS profit
FROM aman
GROUP BY `Sub-Category`
ORDER BY profit ASC
LIMIT 5;

-- --Rgion wise profitability
SELECT 
    Region,
    SUM(Sales) AS sales,
    SUM(Profit) AS profit
FROM aman
GROUP BY Region; 
-- discount impact by category
SELECT 
    Category,
    concat(Discount*100 , '%') as "Discount",
    AVG(Profit) AS avg_profit
FROM aman
GROUP BY Category, Discount
ORDER BY Category, Discount;

-- Monthly trend
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
    SUM(Sales) AS sales,
    SUM(Profit) AS profit
FROM aman
GROUP BY month
ORDER BY month;
