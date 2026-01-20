# Energy Consumption & Cost Optimization Analysis

## Executive Summary
Analysis of energy consumption and cost data shows that costs increase disproportionately during peak periods, resulting in a higher cost per kWh. While no extreme outliers were observed due to the relatively small and evenly distributed dataset, consistent cost clustering around the mean indicates stable consumption patterns. This stability enables proactive planning, with peak-period management and tariff optimization presenting the most impactful opportunities for cost reduction.

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
- Energy costs rise significantly during peak periods, driving a higher cost per kWh compared to off-peak usage.
- A small number of sites and peak time windows contribute most consistently to overall energy spend.
- Cost distributions cluster tightly around the mean, indicating operational stability rather than sporadic inefficiencies even after using the following formulae:
  1. Daily Cost > Average Daily Cost: initial and final committed.
  2. Daily Cost Rank <= High Cost Threshold: a bad day meant a day in the top 20% highest of daily costs.
  3. Daily Cost >= High Cost Cutoff: calculated bad days using a percentile and compared each day to a hard cutoff value.

## Business Value
- This analysis demonstrates how structured data modeling and visualization can support cost optimization and operational decision-making.
- The analysis shows that a small number of high-cost days contribute disproportionately to total energy spend. These days often coincide with peak usage periods, indicating that targeted operational changes during these periods could significantly reduce overall costs.

## Recommendations
- Evaluate load-shifting opportunities to move non-critical operations to off-peak periods.
- Review tariff structures for high-consumption sites to reduce peak cost exposure.
- Use stable consumption patterns to set baseline efficiency targets and monitor deviations as data volume grows.

## Enhancement
- With additional data over a longer time horizon, anomaly detection sensitivity would improve, enabling earlier identification of emerging inefficiencies and abnormal consumption patterns. 
