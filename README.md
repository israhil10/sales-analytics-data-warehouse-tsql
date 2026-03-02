# 📊 Sales Analytics Data Warehouse using T-SQL

## Quick Links
- 🧠 [Key Insights](#key-insights)
- 🗂️ [Project Structure](#project-structure)


---

## Table of Contents
- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Objectives](#objectives)
- [Data Warehouse Architecture](#data-warehouse-architecture)
- [Dataset Description](#dataset-description)
- [Tools and Technologies](#tools-and-technologies)
- [Key Analyses Implemented](#key-analyses-implemented)
- [Key Insights](#key-insights)
- [Business Impact](#business-impact)
- [Challenges Faced](#challenges-faced)
- [Key Learnings](#key-learnings)
- [Project Structure](#project-structure)
- [Contact](#contact)

---

## Project Overview

The **Sales Analytics Data Warehouse using T-SQL** is an end-to-end SQL Server data warehousing project designed to transform raw sales data into business-ready analytical insights.

The solution implements a **Gold-layer analytical warehouse** with dimensional modeling, advanced SQL analytics, and KPI engineering. It enables analysis of customer behavior, product performance, and sales trends using production-style T-SQL techniques.

The project demonstrates real-world data engineering and analytics practices including:

- Dimensional modeling (Fact & Dimension tables)  
- Bulk data ingestion  
- Advanced window function analytics  
- Customer and product segmentation  
- Time-series and performance analysis  

---

## Business Problem

Organizations need a reliable analytical layer to:

- Monitor sales performance over time  
- Identify high-value customers  
- Track product performance  
- Understand revenue distribution  
- Enable data-driven decision making  

Raw transactional data alone is not suitable for analytics. This project solves that by building a structured **analytical data warehouse** optimized for reporting and business intelligence.

---

## Objectives

- Design a Star Schema data model  
- Load dimensional and fact data using BULK INSERT  
- Perform exploratory and analytical SQL queries  
- Generate business KPIs and metrics  
- Implement customer and product segmentation  
- Enable trend and performance analysis  
- Build reusable analytical views  

---

## Data Warehouse Architecture

The warehouse follows dimensional modeling best practices.

### Gold Layer (Analytics)

- **dim_customers** — customer attributes  
- **dim_products** — product hierarchy  
- **fact_sales** — transactional sales data  

The model supports:

- Customer analytics  
- Product analytics  
- Time-series sales analysis  
- KPI reporting  

---

## Dataset Description

- **Domain:** Retail / Sales  
- **Level:** Order-level transactional data  

### Key Entities

**Customers**
- Customer demographics  
- Geography  
- Lifecycle dates  

**Products**
- Category and subcategory  
- Cost and product line  

**Sales**
- Order dates  
- Quantity and price  
- Revenue metrics  

---

## Tools and Technologies

### SQL Server / T-SQL

- Database and schema design  
- BULK INSERT for data loading  
- Window functions (`RANK`, `LAG`, `ROW_NUMBER`)  
- Aggregations and KPI calculations  
- Analytical view creation  

### Data Warehousing Concepts

- Star Schema  
- Fact and Dimension modeling  
- Customer segmentation  
- Time-series analysis  
- Performance benchmarking  

---

## Key Analyses Implemented

### 🔹 Database Exploration
- Metadata inspection using INFORMATION_SCHEMA  
- Dimension value exploration  
- Date range analysis  

### 🔹 Measures & KPI Analysis
- Total sales and quantity  
- Average selling price  
- Order and customer counts  
- Unified KPI report  

### 🔹 Magnitude Analysis
- Customers by country and gender  
- Products by category  
- Revenue by category  
- Revenue by customer  

### 🔹 Ranking Analysis
- Top 5 revenue-generating products  
- Bottom performing products  
- Top customers by revenue  
- Customers with fewest orders  

### 🔹 Time Series Analysis
- Monthly and yearly sales trends  
- Customer growth over time  
- DATETRUNC and FORMAT usage  

### 🔹 Cumulative Analysis
- Running total of sales  
- Moving average price  

### 🔹 Performance Analysis
- Year-over-year product comparison  
- Above/below average classification  
- Previous year trend detection  

### 🔹 Proportional Analysis
- Category contribution to total sales  

### 🔹 Data Segmentation

**Product Segments**
- Below 100  
- 100–500  
- 500–1000  
- Above 1000  

**Customer Segments**
- VIP  
- Regular  
- New  

---

## Key Insights

- Sales trends show clear seasonality patterns  
- A small group of customers drives a large share of revenue  
- High-performing products significantly outperform category averages  
- VIP customers demonstrate longer purchasing lifespans  
- Certain categories dominate overall revenue contribution  

---

## Business Impact

- Enables faster sales performance monitoring  
- Supports customer value analysis  
- Helps identify top and low performing products  
- Improves decision-making with structured KPIs  
- Provides a scalable analytical foundation for BI tools  

---

## Challenges Faced

- Designing a clean dimensional model  
- Writing efficient window function queries  
- Handling date transformations correctly  
- Ensuring aggregation accuracy  
- Building reusable analytical views  

---

## Key Learnings

- Practical dimensional modeling  
- Advanced T-SQL analytics  
- Window functions in real scenarios  
- Business KPI engineering  
- Analytical thinking with SQL  
- Production-style SQL development  

---

## Project Structure

```text
├── datasets/
│   └── csv-files/
├── scripts/
│   ├── schema_creation.sql
│   ├── data_loading.sql
│   ├── exploratory_analysis.sql
│   └── analytics_queries.sql
├── docs/
│   └── data_dictionary.md
└── README.md
