# 🌾 East Africa Maize Yield Insights

This project visualizes maize yield performance across East African trials using field-calibrated agronomic methods, Python, SQL, and Power BI. It combines raw plot measurements with seasonality, regional comparisons, and variety-level analysis — delivering actionable dashboards for decision-makers in agricultural development.

---

## 📦 Repository Structure

```text
modules/
└── yield-performance-module/
    ├── data/                        # Cleaned dataset for analysis
    │   └── yield_metadata_cleaned.csv
    ├── exports/                     # Aggregated SQL output files
    │   └── yearly_avg_yield_by_country.csv
    ├── dashboards/
    │   ├── final_dashboard.pbix     # Power BI dashboard
    │   └── visual_snapshots/
    │       └── yield_dashboard_snapshot.pdf
    ├── SQL/                         # Raw and aggregated query logic
    │   └── top_yielding_country_per_year.sql
    └── docs/
        └── methodology.md           # Cleaning, estimation, and logic docs

---

## 📦 Dataset Overview
- **Source**: [Lacuna Fund Agriculture Datasets](https://lacunafund.org/datasets/agriculture/)
- **Collected by**: One Acre Fund
- **Regions Covered**: Kenya, Rwanda, Tanzania
- **Files Processed**: 18,482 folders, each containing:
  - `metadata.json`: Agronomic details (yield weights, plot size, fertilizer use, GPS)
  - `stac.json`: Satellite image metadata (timestamps, bounding box, sensor info)

---

## 🧾 Fields Extracted

- `Year`  
- `Season`  
- `Country`  
- `Longitude`  
- `Latitude`  
- `BoxAWidth`  
- `BoxALength`  
- `BoxBWidth`  
- `BoxBLength`  
- `BoxAWetWeight`  
- `BoxADryWeight`  
- `BoxBWetWeight`  
- `BoxBDryWeight`  
- `PlotSize_Acres`  
- `Variety`  
- `Planting Date`  
- `CAN_Kgs`  
- `DAP_Kgs`  
- `NPK_Kgs`  
- `Urea_Kgs`  
- `ImgID`

---

## 📊 Project Goals
- Build a unified SQLite database with field-level agronomic data
- Identify yield performance trends across regions and seasons
- Pair dry weight measurements with imagery metadata to explore spatial correlations
- Showcase technical data wrangling using non-code tools (Excel + Power Query)

---

## 🛠️ Methodology Summary

((BoxADryWeight / (BoxAWidth × BoxALength)) + 
 (BoxBDryWeight / (BoxBWidth × BoxBLength))) / 2 
 × (PlotSize_acres × 4046.86)

---

## 🚀 Progress Snapshot

- ✅ Flattened & parsed 10,001 metadata files  
- ✅ STAC metadata ingested and merged  
- ✅ SQLite database structured and populated  
- 🔎 Field-level query design underway (`estimated_yield.sql`)  
- 📊 Dashboard blueprint drafted
- 🌍 Regional yield comparisons by year and season
- 🌧️ Seasonal performance overlay using SOP calculations
- 🌱 Variety performance ranked by field-trial averages
- 📊 Cleaned, minimal datasets for efficient dashboard rendering
- 📎 Exported Power BI snapshot available for preview

---

## 🎓 What I Learned
- Efficiently parsed semi-structured JSON data using Excel Power Query
- Designed reproducible ETL logic without code
- Developed relational database for spatial agronomic analysis
- Explored crop yield trends through structured metadata and remote sensing timestamps

---

👨🏾‍🌾 Author
Reagan Ochola  Data Analyst | Field Supervisor passionate about agronomic analytics, geospatial storytelling, and dashboard design for humanitarian development.[LinkedIn](https://www.linkedin.com/in/reagan-ochola-aba10927/) 

---

Made with curiosity, grit, and thousands of folders 🗂️
