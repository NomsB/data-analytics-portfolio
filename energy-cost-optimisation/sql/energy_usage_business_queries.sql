--QUERIES
--businees q#1: which sites cost the most per month?
--purpose: identify high-cost sites to support targeted efficiency initiatives

--joining main table to site table
SELECT
    f.site_id,
    s.site_name,
    f.cost
FROM fact_energy_usage f 
JOIN dim_site s 
    ON f.site_id = s.site_id;

--adding data table
SELECT
    s.site_name,
    d.month_name,
    d.year,
    f.cost
FROM fact_energy_usage f 
JOIN dim_site s 
    ON f.site_id = s.site_id
JOIN dim_date d 
    ON f.date_id = d.date_id;

--aggregating monthly cost
SELECT
    s.site_name,
    d.month_name,
    d.year,
    SUM(f.cost) AS total_monthly_cost
FROM fact_energy_usage f 
JOIN dim_site s 
    ON f.site_id = s.site_id
JOIN dim_date d 
    ON f.date_id = d.date_id
GROUP BY 
    s.site_name,
    d.month_name,
    d.year
ORDER BY total_monthly_cost DESC;



--business q#2: how much more is spent during peak periods?
SELECT DISTINCT peak_flag
from fact_energy_usage;

SELECT 
    peak_flag
    SUM(cost) AS total_cost
FROM fact_energy_usage
GROUP BY peak_flag;

--values renamed for clarity
SELECT
    CASE
        WHEN peak_flag = 1 THEN 'Peak'
        ELSE 'Off-Peak'
    END AS period_type,
    SUM(cost) AS total_cost
FROM fact_energy_usage
GROUP BY period_type;



--business q#3: which sites and days drive the highest costs?
--joining main table to dim_date 
SELECT
    d.date,
    f.cost
FROM fact_energy_usage f 
JOIN dim_date d 
    ON f.date_id = d.date_id;

--aggregating daily cost
SELECT
    d.date,
    SUM(f.cost) AS daily_cost
FROM fact_energy_usage f 
JOIN dim_date d 
    ON f.date_id = d.date_id
GROUP BY d.date;

--top 5 most expensive days
SELECT
    d.date,
    SUM(f.cost) AS daily_cost
FROM fact_energy_usage f 
JOIN dim_date d 
    ON f.date_id = d.date_id
GROUP BY d.date
ORDER BY daily_cost DESC
LIMIT 5;


--business q#4: cost per kwh by site
--aggreating consumption and cost per site
SELECT
    s.site_name,
    SUM(f.kwh_consumed) AS total_kwh,
    SUM(f.cost) AS total_cost
FROM fact_energy_usage f 
JOIN dim_site s 
    ON f.site_id = s.site_id
GROUP BY s.site_name;

--calculating cost per kWh
SELECT
    s.site_name,
    SUM(f.cost)/SUM(f.kwh_consumed) AS cost_per_kwh
FROM fact_energy_usage f 
JOIN dim_site s 
    ON f.site_id = s.site_id
GROUP BY s.site_name
ORDER BY cost_per_kwh DESC;


--business q#5: monthly consumption and costs overview
SELECT
    d.month_name,
    d.year,
    SUM(f.kwh_consumed) AS total_kwh,
    SUM(f.cost) AS total_cost
FROM fact_energy_usage
JOIN dim_date d 
    ON f.date_id = d.date_id
GROUP BY
    d.month_name,
    d.year
ORDER BY
    d.year,
    d.month;