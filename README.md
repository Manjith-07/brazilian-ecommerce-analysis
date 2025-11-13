# 🛍️ Brazilian E-commerce Performance & Customer Segmentation

## 🎯 Project Overview
This project performs an end-to-end analysis of a real-world Brazilian e-commerce dataset (Olist), focusing on sales performance, geographic distribution, and advanced customer segmentation. The primary goal was to provide actionable business intelligence to optimize marketing spend and improve customer retention.

---

## 🛠️ Technology Stack
| Tool | Purpose |
| :--- | :--- |
| **MySQL Workbench (SQL)** | Data cleaning, multi-table joins (9 tables), and initial aggregation. |
| **Python (Pandas)** | Advanced data cleaning, feature engineering, and RFM segmentation. |
| **Tableau Public** | Interactive dashboard creation and visual storytelling. |
| **Microsoft Excel** | Financial analysis and Year-over-Year (YoY) growth calculations. |

---

## 📈 Key Findings & Business Insights

* **Insight 1: Seasonal Spike & Budgeting (From Tableau/Excel)**
    * Sales are highly seasonal. The **fourth quarter (Q4)** revenue peaks in **November**, showing a **72.03%** increase over the monthly average due to Black Friday.
    * **Recommendation:** Marketing budget and inventory should be significantly front-loaded for October/November to maximize holiday revenue capture.

* **Insight 2: Customer Value (From Python RFM Analysis)**
    * The **'444 Champions' RFM segment** (most recent, frequent, highest spend) comprises only **1.91%** of the total customer base but drives **4.72%** of total revenue.
    * **Recommendation:** A dedicated, high-tier loyalty program is essential to secure these high-value customers and increase their Customer Lifetime Value (CLV).

* **Insight 3: Geographic Opportunity (From Tableau Map)**
    * The state of **São Paulo (SP)** generates **37.42%** of the total revenue, but the state of **Minas Gerais (MG)** has the highest average order value (AOV) outside of SP.
    * **Recommendation:** Focus promotional campaigns in MG to convert high-AOV customers into more frequent buyers, thereby diversifying revenue away from SP dependence.

---

## 🔗 Project Links & Deliverables
* **Live Interactive Dashboard:** [View on Tableau Public](https://public.tableau.com/views/olist_brazilian_data_analysis/Dashboard1)
* **Analysis Code (Python/SQL):** See the `olist_rfm_analysis.ipynb` and `sql/` folder.
* **Final Data Files:** See `olist_master_clean_python.csv` and `olist_rfm_segments.csv`.

---

## 📂 Repository Contents

This repository contains all code and cleaned data used for the analysis.

### Code
* **sql/**
    * `olist_master_join.sql`: All MySQL commands for data joining, feature engineering, and aggregation.
* **olist_rfm_analysis.ipynb**: Python notebook containing data cleaning, type conversion, and the full RFM customer segmentation analysis.

### Data & Deliverables
* `olist_master_clean_python.csv`: The final, cleaned, and joined transaction data table used as the source for the dashboard.
* `olist_rfm_segments.csv`: The summary table containing all customer RFM scores (used for the segmentation bar chart).
* `README.md`: Project documentation, methodology, and key business insights.

