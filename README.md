# Supply Chain Analytics — SAP Datasphere & SAC

End-to-end supply chain analytics platform built on SAP Datasphere and SAP Analytics Cloud using the DataCo Smart Supply Chain dataset (180,000+ orders).

## What this project does
Models raw supply chain data through a layered SQL architecture in SAP Datasphere, delivers two executive-ready SAC dashboards, and integrates a 30-day revenue forecast built with Facebook Prophet.

## Architecture
T_DATACO_RAW → V_ORDERS_MASTER → V_REGIONAL_PERFORMANCE, V_MONTHLY_TRENDS, V_PRODUCT_PERFORMANCE → AM_SUPPLY_CHAIN → SAC Dashboards

Python Prophet → T_FORECAST_30D_V2 → V_FORECAST → SAC Page 2

## Key Findings
- Central America drives 15.4% of total revenue at $5.67M
- Fishing category generates highest profit at $756K
- 54.83% late order rate — Standard Class shipping is the primary risk driver
- 30-day predicted revenue: $490K (range: $210K–$770K)

## Tech Stack
SAP Datasphere · SAP Analytics Cloud · Python · Prophet · SQL · GitHub

## SQL Techniques
Window functions — RANK(), LAG(), SUM() OVER(), NTILE() · Profit Margin % · Late Order Rate % · MoM Growth % · Multi-layer view architecture

## Screenshots
<img width="775" height="512" alt="Executive   Operations" src="https://github.com/user-attachments/assets/17b1c8f6-5504-49da-809a-3914df6f4191" />

<img width="745" height="473" alt="Demand Forecast" src="https://github.com/user-attachments/assets/86fb4ee4-3efc-4986-b6bf-37ebec8105c7" />

## Author
Mayuresh Parche — M.Sc. Software Engineering, Hochschule Heilbronn
[LinkedIn](https://linkedin.com/in/mayureshparche) · [GitHub](https://github.com/Mayureshp21)
