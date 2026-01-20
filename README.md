# 📦 Retail Inventory & Sales Analysis | Excel, SQL, Power BI

An end-to-end inventory and sales analytics project focused on understanding demand patterns, stock health, and revenue contribution across products and stores. The dashboard helps identify low-stock risks, fast-moving items, and revenue-driving SKUs using Pareto analysis.

---

## 📌 Project Overview
Retail businesses often struggle with stock-outs, overstocking, and lack of visibility into which products truly drive revenue.  
This project analyzes inventory and sales data to support better operational and replenishment decisions.

---

## 📊 Data & Scope
- Analyzed **35,000+ inventory and sales transactions**
- Covered **25 stores** and **1,800+ SKUs**
- Time period: **July–December 2024**
- Multiple product categories including Grocery, Home, Personal Care, Beverages, and Snacks
- Dataset intentionally included data quality issues to simulate real-world scenarios

---

## 🧼 Data Cleaning & Preparation (Excel)
Raw data was cleaned and prepared in Excel before analysis:
- Removed rows with missing SKU values
- Removed invalid records (negative stock, selling price lower than cost)
- Standardized date formats for time-based analysis
- Recalculated key fields:
  - Revenue
  - Days of Cover
  - Low Stock Flag (Days of Cover < 7)
- Performed post-cleaning validation to ensure data consistency

Cleaned dataset used for analysis:  
`data/cleaned/inventory_sales_cleaned.xlsx`

---

## 🧮 SQL Analysis (MySQL)
SQL was used to perform analytical queries and validate business logic:
- Revenue by store and category
- Stock turnover analysis (Units Sold ÷ Average Stock)
- Low stock / stock-out risk identification
- Pareto (80/20) analysis to identify revenue-driving SKUs
- Daily and monthly sales summaries for reporting

SQL scripts available in:  
`sql/inventory_analysis.sql`

---

## 📈 Power BI Dashboard
An interactive Power BI dashboard was built to visualize insights and support decision-making.

### Key Dashboard Pages
1. **Inventory Health**
   - Total Revenue
   - Stock Turnover
   - Low Stock %
   - SKUs at stock-out risk

2. **Pareto Analysis**
   - Revenue contribution by SKU
   - Cumulative revenue percentage (80/20 rule)
   - Identification of top revenue-driving products

3. **Store & Demand Performance**
   - Revenue by store
   - Revenue by category
   - Monthly revenue trends and seasonality

### KPIs Included
- Total Revenue
- Total Units Sold
- Stock Turnover
- Low Stock %
- Product Revenue
- Product Contribution %
- Revenue by Store
- Revenue by Category
- Monthly Revenue Trend

---

## 🔎 Key Insights
- A small percentage of SKUs contribute a majority of total revenue (Pareto effect)
- Certain categories show higher stock turnover, indicating faster-moving products
- Multiple SKUs show consistently low days of cover, highlighting stock-out risk
- Demand increases significantly during November–December, indicating seasonality

---

## 🖼️ Dashboard Preview

## 1. Inventory Health (Executive View) - 

<img width="883" height="495" alt="Inventory Health (Executive View)" src="https://github.com/user-attachments/assets/872bbdfd-74a7-464a-9fff-0ca73dd1785d" />



## 2. Pareto Analysis -
  <img width="882" height="484" alt="Pareto Analysis" src="https://github.com/user-attachments/assets/b932d8a7-3be8-4b7f-a81a-67eaef773bba" />



## 3. Store & Demand Performance -
<img width="874" height="489" alt="Store   Demand Performance" src="https://github.com/user-attachments/assets/f816873d-06fb-49ff-a92c-d71a6ef4b900" />



---
## 🧰 Tools & Technologies
- **Excel** – Data cleaning, validation, calculated fields  
- **SQL (MySQL)** – Aggregation, KPI calculation, Pareto analysis  
- **Power BI** – Data modeling, DAX measures, interactive dashboards  

---

## 📂 Repository Structure
```
Retail-Inventory-Sales-Analysis/
│── README.md
│
├── data/
│ ├── raw/
│ │ └── inventory_sales_raw.csv
│ └── cleaned/
│ └── inventory_sales_cleaned.xlsx
│
├── excel/
│ └── cleaning_steps.md
│
├── sql/
│ └── inventory_analysis.sql
│
├── powerbi/
│ └── Inventory Health (Executive View).png
│ └── Pareto Analysis.png
│ └──  Retail Inventory & Sales Analysis.pbix
│ └── Store & Demand Performance.png

```


---

## 📬 Contact
**Manish Sharma**  
🔗 LinkedIn: https://www.linkedin.com/in/manish-sharma-552b892b7/  
🔗 GitHub: https://github.com/ms08724919483-ops
