# 📊 Task 6: Sales Trend Analysis Using PostgreSQL

## 🎯 Objective
Analyze monthly revenue and order volume from e‑commerce sales data using PostgreSQL. Visualize the results using pgAdmin's Graph Visualizer.

---

## 🛠️ Tools Used
- PostgreSQL
- pgAdmin (Graph Visualizer)

---

## 🗂️ Dataset
Table: `online_sales`  
Columns: `order_id`, `order_date`, `product_id`, `amount`

---

## 🔧 Steps Performed
1. Dropped existing `online_sales` table (if any)  
2. Created `online_sales` table with appropriate columns  
3. Inserted sample data covering January–April 2023  
4. Queried to aggregate by year and month, computing:
   - Total number of orders  
   - Total revenue  
5. Applied a date filter to limit results to Jan–Apr 2023  

---

## 📉 Visualization
- Open pgAdmin’s **Graph Visualizer** on the aggregation result  
- Configure:
  - **X‑Axis** → `month`  
  - **Y‑Axis** → `total_orders` and `total_revenue`  
  - **Chart Type** → Bar Chart  
- Generate and customize the chart as needed  

---

## ✅ Output
A bar chart showing monthly trends for:
- **Total Orders**  
- **Total Revenue**  
(from January 2023 through April 2023)

