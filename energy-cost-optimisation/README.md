# Energy Consumption & Cost Optimization Analysis

## Business Problem
Energy costs are a major operational expense. This project analyzes energy consumption data to identify cost drivers, inefficiencies, and opportunities for optimization.

## Objectives
- Analyze daily and monthly energy consumption trends
- Identify peak usage patterns and high-cost periods
- Provide insights to support energy efficiency and cost reduction decisions

## Tools Used
- SQL (data aggregation and analysis)
- Power BI (data modeling and visualization)
- Excel (data preparation)

## Expected Outcomes
- Clear visibility into energy usage and cost patterns
- Identification of inefficiencies and anomalies
- Actionable insights to support operational decision-making

## Data Model
This project uses a star schema with a central fact table capturing energy usage and cost,
linked to date and site dimension tables to enable flexible time-based and location-based analysis.

## Key Insights
- Energy costs increase disproportionately during peak periods, resulting in a higher cost per kWh. This indicates potential opportunities for load shifting or tariff optimization.
- Identified high-cost sites and peak usage periods driving overall energy spend
- Highlighted consumption trends to support efficiency planning
- Designed an interactive Power BI dashboard for management reporting
- Because the dataset is small and evenly distributed the costs seem to cluster tightly around the mean, producing no clear outliers despite adjusting the lens using the following formulae:
  1. Daily Cost > Average Daily Cost: initial and final committed.
  2. Daily Cost Rank <= High Cost Threshold: a bad day meant a day in the top 20% highest of daily costs.
  3. Daily Cost >= High Cost Cutoff: calculated bad days using a percentile and compared each day to a hard cutoff value.

## Business Value
- This analysis demonstrates how structured data modeling and visualization can support cost optimization and operational decision-making.
- The analysis shows that a small number of high-cost days contribute disproportionately to total energy spend. These days often coincide with peak usage periods, indicating that targeted operational changes during these periods could significantly reduce overall costs.
