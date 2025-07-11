# 📐 Box-Based Yield Estimation Methodology

This document outlines the logic behind the estimated yield calculations used in the Maize Yield Insights project.

---

## 🎯 Purpose

To estimate dry maize yield for each plot using harvest weights from two sample boxes (Box A and Box B) with variable dimensions. This method is adapted from field protocols used by One Acre Fund.

---

## 📦 Formula Breakdown

1. **Box Area Calculation**
   - `BoxAArea = BoxAWidth × BoxALength`
   - `BoxBArea = BoxBWidth × BoxBLength`

2. **Yield per Square Meter**
   - `YieldA = BoxADryWeight ÷ BoxAArea`
   - `YieldB = BoxBDryWeight ÷ BoxBArea`

3. **Average Sample Yield**
   - `AvgSampleYield = (YieldA + YieldB) ÷ 2`

4. **Scale to Entire Plot**
   - `PlotArea_m² = PlotSize_acres × 4046.86`
   - `EstimatedYieldKG = AvgSampleYield × PlotArea_m²`

---

## 📊 Use in SQL & Dashboards

- This formula is implemented in `queries/estimated_yield.sql`.
- Output is used for top-performing field analysis, yield per variety, and field summary dashboards.

---
