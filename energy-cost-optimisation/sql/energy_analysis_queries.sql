CREATE TABLE energy_usages(
  date TEXT,
  site_id TEXT,
  meter_id TEXT,
  kwh_consumed REAL,
  cost REAL,
  peak_flag TEXT
  );
INSERT INTO energy_usages VALUES
('2026-01-01', 'Site_A', 'MTR_01', 120.5, 180.75, 'Peak'),
('2026-01-01', 'Site_A', 'MTR_02', 90.0, 120.50, 'Off-Peak'),
('2026-01-02', 'Site_A', 'MTR_01', 130.0, 195.00, 'Peak'),
('2026-01-02', 'Site_B', 'MTR_03', 200.0, 300.00, 'Peak'),
('2026-01-03', 'Site_B', 'MTR_03', 160.0, 220.00, 'Off-Peak'),
('2026-01-03', 'Site_A', 'MTR_02', 85.0, 110.25, 'Off-Peak'),
('2026-01-04', 'Site_A', 'MTR_01', 140.0, 210.00, 'Peak'),
('2026-01-04', 'Site_B', 'MTR_03', 175.0, 260.00, 'Peak'),
('2026-01-05', 'Site_A', 'MTR_02', 95.0, 130.00, 'Off-Peak'),
('2026-01-05', 'Site_B', 'MTR_03', 190.0, 280.00, 'Peak');

--sanity check
SELECT * FROM energy_usages;

--SQL QUERIES TO ANSWER BUSINESS QUESTIONS
--calculated daily energy consumption
SELECT 
	date,
    SUM(kwh_consumed) AS total_kwh

FROM energy_usages
GROUP BY date
ORDER BY date;

--calculated monthly cost 
SELECT 
	SUBSTR(date, 1, 7) AS month,
	SUM(cost) AS total_cost

FROM energy_usages
GROUP BY month
ORDER BY month;

--peak vs off-peak usage
SELECT 
	peak_flag,
	SUM(kwh_consumed) AS total_kwh

FROM energy_usages
GROUP BY peak_flag;

--which 5 days had the highest energy cost?
SELECT 
	date, 	
	SUM(cost) AS daily_cost

FROM energy_usages
GROUP BY date
ORDER BY daily_cost DESC
LIMIT 5;

--which site consumes the most energy overall?
SELECT site_id,
SUM(kwh_consumed) AS total_kwh

FROM energy_usages
GROUP BY site_id
ORDER BY total_kwh DESC;