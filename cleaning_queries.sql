-- Count nulls per column
SELECT COUNT(*) - COUNT(price) AS price_nulls FROM supply_chain;

-- Check duplicates (optional)
SELECT sku, COUNT(*) 
FROM supply_chain
GROUP BY sku
HAVING COUNT(*) > 1;
