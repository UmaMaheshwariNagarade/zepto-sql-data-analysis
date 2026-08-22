/* =========================================================
   ZEPTO SQL DATA ANALYSIS
   Author: Your Name
   Database: Zepto
   ========================================================= */
   
/* =========================================================
   1. DATA EXPLORATION
   ========================================================= */
-- Count of Rows
select count(*) from zepto

-- View Dataset
select * from zepto

-- Different product Categories
select Distinct Category from zepto
order by Category

/* =========================================================
   2. PRODUCT AVAILABILITY
   ========================================================= */

--Product instock vs OutofStock
select 
	outOfStock,
	case when outOfStock = 0 then 'In stock'
	else 'outof Stock' end as Available_Status,
	count(outOfStock) as Availability
from zepto
group by outOfStock
-- 3279 products are instock and 453 are Outof Stock

-- Products Availability
select 
	name,
	Count(name) as Number_of_items
from zepto
group by name
Having Count(name) > 1
order by Count(name) desc

/* =========================================================
   3. DATA CLEANING
   ========================================================= */

-- 1. Products with zero Price
select * from zepto
where mrp = 0 or discountedSellingPrice = 0

Delete from zepto
where mrp = 0

-- 2.Check Null values
select * from zepto
	where  [Category] is Null or
		   [name] is null or
		   [mrp] is null or
		   [availableQuantity] is null or
		   [discountPercent] is null or
		   [weightInGms] is null or
		   [outOfStock] is null or
		   [quantity] is null
-- In the Output Didn't got anything Means there are no Null values

-- 3. Covenrt MRP ro INR
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice / 100.0

/* =========================================================
   4. BUSINESS INSIGHTS
   ========================================================= */

-- Q1: Top 10 Best Values Products with Highest Discount percentage
select Top 10
	name,
	mrp,
	discountPercent
from zepto
order by discountPercent desc

-- Q2: Products with High MRP but Outofstock
select 
	Distinct name,
	mrp
from zepto
where [outOfStock] = 1 AND mrp > 200
order by mrp desc

-- Q3: Estimated Revenue by Category
select 
	Category,
	sum(discountedSellingPrice * quantity) as EstimatedRevenue
from zepto
group by Category
order by EstimatedRevenue desc

-- Q4: Expensive Products (mrp > 500) with Discount percentage as less than 10%
select 
	Distinct name,
	mrp,
	discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc

-- Q5: Top 5 Categories with Highest Average Discount Percentage
select Top 5
	Category,
	Round(avg(discountPercent), 2) as AvgDiscountPercentage
from zepto
group by Category
order by avg(discountPercent) desc

-- Q6: Calculate Price per Gram for products weight more than 100g and sort by best value
select
	Distinct name,
	weightInGms,
	discountedSellingPrice,
	cast(discountedSellingPrice / weightInGms as decimal (10,2)) as PriceperGram
from zepto
where weightInGms > 100
order by PriceperGram Asc

-- Q7: Group the products into Categories like Low, Medium, Bulk Based on their weight
select 
	name,
	weightInGms,
	case when weightInGms <= 500 then 'Low'
		 when weightInGms <= 1000 then 'Medium'
		 else 'Bulk' End as Weight_Category
from zepto
order by weightInGms desc

-- Q8: What is Total Inventory wight per Category
select 
	Category,
	sum(weightInGms * cast(availableQuantity as INT)) as TotalWeight
from zepto
group by Category 
order by TotalWeight desc

