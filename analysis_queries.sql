CREATE DATABASE supply_chain_project;

USE supply_chain_project;

select * from supply_chain;

select sku from supply_chain;

-- Basic KPIs
-- 1. total revenue
SELECT SUM(revenue_generated) AS total_revenue FROM supply_chain;

-- 2. Total units sold
SELECT SUM(products_sold) AS total_units_sold FROM supply_chain;

-- 3. Average price
SELECT AVG(price) AS avg_price FROM supply_chain;

-- Inventory Analysis
-- Low stock products
SELECT sku, stock_levels
FROM supply_chain
WHERE stock_levels < 50
ORDER BY stock_levels;

--  High demand but low stock
SELECT sku, products_sold, stock_levels
FROM supply_chain
WHERE products_sold > 100
AND stock_levels < 50;

-- Stock vs revenue
SELECT sku, stock_levels, revenue_generated
FROM supply_chain
ORDER BY revenue_generated DESC;

-- Revenue & Sales Analysis 

-- Revenue by product type
SELECT product_type, SUM(revenue_generated) AS total_revenue
FROM supply_chain
GROUP BY product_type
ORDER BY total_revenue DESC;

-- Revenue by location
SELECT location, SUM(revenue_generated) AS total_revenue
FROM supply_chain
GROUP BY location
ORDER BY total_revenue DESC;

-- Rank products by revenue
SELECT sku, revenue_generated,
RANK() OVER (ORDER BY revenue_generated DESC) AS revenue_rank
FROM supply_chain;

-- Supplier Performance
-- Top suppliers by defect rate
SELECT supplier_name, AVG(defect_rate) AS avg_defect
FROM supply_chain
GROUP BY supplier_name
ORDER BY avg_defect DESC;

-- Supplier with longest manufacturing lead time
SELECT supplier_name, AVG(manufacturing_lead_time) AS avg_mfg_lead
FROM supply_chain
GROUP BY supplier_name
ORDER BY avg_mfg_lead DESC;

-- Logistics & Shipping
-- Shipping cost by carrier
SELECT shipping_carrier, SUM(shipping_cost) AS total_shipping_cost
FROM supply_chain
GROUP BY shipping_carrier
ORDER BY total_shipping_cost DESC;

-- Average shipping time by route
SELECT route, AVG(shipping_time) AS avg_shipping_time
FROM supply_chain
GROUP BY route
ORDER BY avg_shipping_time DESC;

-- Manufacturing & Production Analysis
-- Production volume by product type
SELECT product_type, SUM(production_volume) AS total_production
FROM supply_chain
GROUP BY product_type
ORDER BY total_production DESC;

-- Defect rate by product type
SELECT product_type, AVG(defect_rate) AS avg_defect_rate
FROM supply_chain
GROUP BY product_type
ORDER BY avg_defect_rate DESC;

-- view for low stock high demand SKUs
CREATE OR REPLACE VIEW low_stock_high_demand AS
SELECT sku, products_sold, stock_levels
FROM supply_chain
WHERE products_sold > 100 AND stock_levels < 50;