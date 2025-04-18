-- Step 1: Drop the existing table if it exists
DROP TABLE IF EXISTS online_sales;

-- Step 2: Create the online_sales table
CREATE TABLE online_sales (
    order_id INTEGER PRIMARY KEY,
    order_date DATE,
    product_id INTEGER,
    amount NUMERIC(10,2)
);

-- Step 3: Insert sample data
INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1, '2023-01-15', 101, 100.00),
(2, '2023-01-20', 102, 150.00),
(3, '2023-02-05', 103, 200.00),
(4, '2023-02-10', 101, 120.00),
(5, '2023-03-12', 104, 250.00),
(6, '2023-03-25', 105, 300.00),
(7, '2023-03-28', 106, 180.00),
(8, '2023-04-03', 107, 220.00),
(9, '2023-04-20', 108, 90.00);

-- Step 4: Select and show the table content
SELECT * FROM online_sales;
-- Full query to analyze monthly revenue and order volume from January to April 2023
SELECT
  EXTRACT(YEAR FROM order_date) AS year,          -- Extract year from order_date
  EXTRACT(MONTH FROM order_date) AS month,        -- Extract month from order_date
  COUNT(DISTINCT order_id) AS total_orders,      -- Count distinct order IDs for order volume
  SUM(amount) AS total_revenue                   -- Sum the amount to calculate total revenue
FROM
  online_sales                                    -- From the online_sales table
WHERE
  order_date >= '2023-01-01' AND                 -- Filter orders starting from January 1, 2023
  order_date <= '2023-04-30'                     -- Filter orders until April 30, 2023
GROUP BY
  year, month                                    -- Group results by year and month
ORDER BY
  year, month;                                   -- Sort results by year and month
