# 🌾 Maize Yield Insights — Field-Level Agronomic Data in East Africa

> This project surfaces field-level yield dynamics across East Africa, leveraging structured agronomic metadata and satellite imagery to identify spatial and seasonal performance trends—delivered through a reproducible, code-free data pipeline.

## 📦 Dataset Overview
- **Source**: [Lacuna Fund Agriculture Datasets](https://lacunafund.org/datasets/agriculture/)
- **Collected by**: One Acre Fund
- **Regions Covered**: Kenya, Rwanda, Tanzania
- **Files Processed**: 18,482 folders, each containing:
  - `metadata.json`: Agronomic details (yield weights, plot size, fertilizer use, GPS)
  - `stac.json`: Satellite image metadata (timestamps, bounding box, sensor info)

## 🔍 Fields Extracted
- `Year`, `Season`, `Country`
- `Latitude`, `Longitude`, `PlotSize_acres`
- `BoxADryWeight`, `BoxBDryWeight`
- Fertilizer inputs: CAN, DAP, NPK, Urea
- Image timestamps: e.g. `jun17.png`, `dec18.png`

## 📊 Project Goals
- Build a unified SQLite database with field-level agronomic data
- Identify yield performance trends across regions and seasons
- Pair dry weight measurements with imagery metadata to explore spatial correlations
- Showcase technical data wrangling using non-code tools (Excel + Power Query)

## 🛠️ Tools Used

| Tool               | Purpose                              |
|--------------------|--------------------------------------|
| Excel Power Query  | Batch JSON parsing & CSV creation    |
| DB Browser SQLite  | Data querying and structuring        |
| TabLab             | JSON to CSV conversion               |
| GitHub             | Version control & publishing         |

## 🚀 Status
- ✅ Flattened & extracted 10,001 metadata files so far
- ⏳ STAC file processing underway
- 🔜 Next Steps: Merge CSVs → SQLite import → Query design

## 📁 Repo Structure
```
## 📂 Folder Structure

```
maize-yield-insights/
├── data/
│   ├── raw/                     # Original JSON files
│   └── processed/              # Cleaned CSV outputs
├── scripts/
│   └── json_csv_etl.py         # Python script for JSON-to-CSV conversion
├── dashboards/
│   └── 📐 [Dashboard Design Blueprint](dashboards/blueprint.md)
            # Text-based design for dashboard modules
├── notebooks/
│   └── exploratory_analysis.ipynb  # EDA and visual experiments
├── assets/
│   └── images/                 # Screenshots of dashboards/mockups
└── README.md                   # Project overview and usage instructions
```


## 🎓 What I Learned
- Efficiently parsed semi-structured JSON data using Excel Power Query
- Designed reproducible ETL logic without code
- Developed relational database for spatial agronomic analysis
- Explored crop yield trends through structured metadata and remote sensing timestamps

## 📬 Let’s Connect
For questions, collaborations, or feedback, feel free to connect via [LinkedIn](https://www.linkedin.com/in/reagan-ochola-aba10927/) or raise an issue in this repository.

---
Made with curiosity, grit, and thousands of folders 🗂️
