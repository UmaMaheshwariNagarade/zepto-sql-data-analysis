# zepto-sql-data-analysis
SQL data analysis project exploring Zepto product pricing, discounts, inventory and availability.

# Zepto SQL Data Analysis

## Project Overview

This project analyzes a Zepto product dataset using SQL to explore product availability, pricing, discounts, inventory, and category-level business insights.

The project also includes basic data cleaning and transformation before performing the analysis.

## Project Objectives

The main objectives of this project are:

Explore the structure of the Zepto product dataset
Identify product availability and out-of-stock products
Check for duplicate products and missing values
Clean and transform pricing data
Analyze discounts and product pricing
Calculate estimated revenue by category
Analyze inventory weight
Identify high-value and expensive products
Practice SQL aggregation and conditional logic

## Project Overview

This project analyzes a Zepto product dataset using SQL to explore product availability, pricing, discounts, inventory, and category-level business insights.

The project also includes basic data cleaning and transformation before performing the analysis.

## Project Objectives

The main objectives of this project are:

Explore the structure of the Zepto product dataset
Identify product availability and out-of-stock products
Check for duplicate products and missing values
Clean and transform pricing data
Analyze discounts and product pricing
Calculate estimated revenue by category
Analyze inventory weight
Identify high-value and expensive products
Practice SQL aggregation and conditional logic

## SQL Skills Used

* SELECT
* DISTINCT
* WHERE
* GROUP BY
* HAVING
* ORDER BY
* TOP
* CASE WHEN
* Aggregate Functions

  * COUNT()
  * SUM()
  * AVG()
* ROUND()
* CAST()
* DELETE
* UPDATE
* Data Cleaning
* Business Analysis

## Dataset

The dataset contains information about Zepto products, including:

Product category
Product name
MRP
Discounted selling price
Available quantity
Discount percentage
Product weight
Stock availability
Product quantity

## Data Cleaning

The following cleaning steps were performed:

### 1. Removed products with zero MRP

Products with an MRP of zero were identified and removed from the analysis.

### 2. Checked for NULL values

The major columns were checked for missing values.

No NULL values were found in the checked columns.

### 3. Converted prices to INR

The MRP and discounted selling price were converted from their stored unit into INR.

## Analysis Performed

### 1. Product Availability

Analyzed the number of products that are currently in stock versus out of stock.

### 2. Product Availability by Name

Identified product names that appear multiple times in the dataset.

### 3. Top 10 Products by Discount

Found the top 10 products with the highest discount percentage.

### 4. High-MRP Out-of-Stock Products

Identified expensive products with an MRP greater than ₹200 that are currently out of stock.

### 5. Estimated Revenue by Category

Calculated estimated revenue for each product category using:

`Discounted Selling Price × Quantity`

### 6. Expensive Products with Low Discounts

Identified products with an MRP greater than ₹500 and a discount percentage below 10%.

### 7. Categories with Highest Average Discount

Calculated the average discount percentage for each category and identified the top 5 categories.

### 8. Price per Gram

Calculated the price per gram for products weighing more than 100 grams to identify products offering better value based on weight.

### 9. Product Weight Classification

Grouped products into three categories based on their weight:

* Low: ≤ 500g
* Medium: 501g–1000g
* Bulk: > 1000g

### 10. Inventory Weight by Category

Calculated the total inventory weight for each product category using:

`Weight × Available Quantity`

## Key Business Questions

This project answers questions such as:

* Which products have the highest discounts?
* Which expensive products are out of stock?
* Which categories generate the highest estimated revenue?
* Which expensive products have low discounts?
* Which categories offer the highest average discounts?
* Which products provide better value based on price per gram?
* How are products distributed by weight?
* Which categories hold the largest inventory weight?

## Project Structure

Zepto-SQL-Data-Analysis/

├── README.md
├── SQL/
│   └── zepto\_analysis.sql
├── Dataset/
│   └── zepto.csv
└── Screenshots/
   ├── Q1\_top\_discounted\_products.png
   ├── Q2\_outofstock\_expensive\_products.png
   ├── Q3\_category\_revenue.png
   └── Q4\_inventory\_weight.png

##Author

SQL Data Analysis Project created as part of my journey toward becoming a Data Analyst.
