ALTER TABLE supply_chain RENAME COLUMN `Product type` TO product_type;

ALTER TABLE supply_chain RENAME COLUMN `SKU` TO sku;

ALTER TABLE supply_chain RENAME COLUMN `Price` TO price;

ALTER TABLE supply_chain RENAME COLUMN `Availability` TO availability;

ALTER TABLE supply_chain RENAME COLUMN `Number of products sold` TO products_sold;

ALTER TABLE supply_chain RENAME COLUMN `Revenue generated` TO revenue_generated;

ALTER TABLE supply_chain RENAME COLUMN `Customer demographics` TO customer_demographics;

ALTER TABLE supply_chain RENAME COLUMN `Stock levels` TO stock_levels;

ALTER TABLE supply_chain RENAME COLUMN `Lead times` TO lead_time_supplier;

ALTER TABLE supply_chain RENAME COLUMN `Order quantities` TO order_quantity;

ALTER TABLE supply_chain RENAME COLUMN `Shipping times` TO shipping_time;

ALTER TABLE supply_chain RENAME COLUMN `Shipping carriers` TO shipping_carrier;

ALTER TABLE supply_chain RENAME COLUMN `Shipping costs` TO shipping_cost;

ALTER TABLE supply_chain RENAME COLUMN `Supplier name` TO supplier_name;

ALTER TABLE supply_chain RENAME COLUMN `Location` TO location;

ALTER TABLE supply_chain RENAME COLUMN `Lead time` TO lead_time;

ALTER TABLE supply_chain RENAME COLUMN `Production volumes` TO production_volume;

ALTER TABLE supply_chain RENAME COLUMN `Manufacturing lead time` TO manufacturing_lead_time;

ALTER TABLE supply_chain RENAME COLUMN `Manufacturing costs` TO manufacturing_cost;

ALTER TABLE supply_chain RENAME COLUMN `Inspection results` TO inspection_result;

ALTER TABLE supply_chain RENAME COLUMN `Defect rates` TO defect_rate;

ALTER TABLE supply_chain RENAME COLUMN `Transportation modes` TO transportation_mode;

ALTER TABLE supply_chain RENAME COLUMN `Routes` TO route;

ALTER TABLE supply_chain RENAME COLUMN `Costs` TO total_cost;