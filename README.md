
# 📊 Retail SQL Insights
Transforming raw transactional logs into high-level business intelligence.\</p\>


-----

### 📖 Table of Contents

  - Description
  - ✨ Features
  - 🚀 Quick Start
  - ⚙️ Configuration
  - 🛠️ Usage
  - 🗺️ Roadmap
  - 📄 License


## 📝 Description

This project showcases a production-ready SQL analytical suite designed for a high-volume retail environment. It bridges the gap between raw data engineering and business strategy by translating millions of rows into actionable insights like customer lifetime value and product affinity.


## ✨ Features

  * **Whale Detection:** Identifies top-tier revenue generators using aggregated purchase logic.
  * **Market Basket Analysis:** Uses set-theory logic to find product affinities (e.g., items frequently bought together).
  * **Inventory Velocity:** Tracks unique SKU movement across specific high-traffic dates.
  * **Data Cleaning:** Excludes guest/null transactions to ensure clean business reporting.


## 🚀 Quick Start

### Prerequisites

  * **Database:** SQLite or PostgreSQL.
  * **Environment:** Best experienced in **NeoVim** with a SQL LSP or a standard terminal.

### Installation

1.  **Clone the repo:**
    ```bash
    git clone https://github.com/USER/retail-sql-insights.git
    cd retail-sql-insights
    ```
2.  **Initialize the Database:**
    ```bash
    sqlite3 retail.db < schema.sql
    ```



## ⚙️ Configuration

The queries assume the following table structure:

| Name | Type | Description |
| :--- | :--- | :--- |
| `UnitPrice` | DECIMAL | Item price in **INR** |
| `Quantity` | INTEGER | Units per transaction |
| `CustomerID` | INTEGER | Unique identifier (Foreign Key) |



## 🛠️ Usage

### High-Value Revenue Analysis (The "Whale" Query)

Calculates the total monetary contribution per customer.
$$Total Revenue = \sum (Quantity \times UnitPrice)$$

```sql
-- Identify top 10 spenders
SELECT 
    customerid, 
    SUM(unitprice * quantity) AS total_spend
FROM products
WHERE customerid IS NOT NULL
GROUP BY customerid
ORDER BY total_spend DESC
LIMIT 10;
```

### Product Affinity Analysis

Finds transactions containing both specific items to optimize cross-selling.

```sql
SELECT invoiceno
FROM products
WHERE description IN ('WHITE METAL LANTERN', 'WHITE HANGING HEART T-LIGHT HOLDER')
GROUP BY invoiceno
HAVING COUNT(DISTINCT description) = 2;
```



## 🗺️ Roadmap

  - [ ] Migrate analysis to **AWS RDS** for cloud scalability.
  - [ ] Automate daily reports using **AWS Lambda** (Python).
  - [ ] Build a **Power BI** dashboard for visual stakeholder reporting.


## 📄 License

Distributed under the **MIT License**. See `LICENSE` for more information.



