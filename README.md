# dbt-olist-project
This project demonstrates a **modern data engineering workflow** using **dbt** on **Google Cloud BigQuery**, transforming the [Olist e-commerce dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).

---

## 🚀 Project Overview
- **Raw data**: Loaded into BigQuery dataset `raw_olist`  
- **Transformations**: dbt models create a cleaned & analytics-ready layer in `transformed_dbt_dataset`  
- **Testing**: Includes **dbt tests** for data quality and freshness  
- **Version control**: Project managed via Git + GitHub  
- **Automation**: Can be scheduled/orchestrated with dbt Cloud or CI/CD pipelines  

---

## 📂 Project Structure
.
├── models/ # dbt models (SQL transformations)
│ └── example/ # sample transformations (customers, orders, etc.)
├── macros/ # reusable SQL logic
├── tests/ # custom tests (optional)
├── dbt_project.yml # main dbt config
├── .gitignore # ignored files for clean repo
└── README.md # project documentation

yaml
Copy
Edit

---

## 🧪 Data Tests
- **Schema tests** (e.g. `unique`, `not_null`)  
- **Referential integrity tests** (e.g. valid foreign keys between tables)  
- **Freshness tests** (ensuring data is up to date)

---

## ⚙️ Setup Instructions
1. Clone the repo:
   ```bash
   git clone https://github.com/NIAIB/dbt_olist_project.git
   cd dbt_olist_project
Install dependencies:
pip install dbt-bigquery
Configure dbt profile (~/.dbt/profiles.yml) with your GCP project ID, dataset, and location.

Run dbt:

dbt run
dbt test



📈 Use Cases
Demonstrate data engineering & transformation skills for analytics

Build a semantic layer for BI tools (Looker, Tableau, etc.)

Show CI/CD workflows with dbt + GitHub

Run data quality tests to ensure trust in analytics
