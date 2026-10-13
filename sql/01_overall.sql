WITH intel_full AS (
 SELECT d.device_id, d.device_type, d.model_year, p.impact_id, p.region,
        p.energy_savings_yr, p.co2_saved_kg_yr,
        2024 - d.model_year AS device_age,
        CASE WHEN d.model_year IS NULL THEN 'unknown'
             WHEN 2024 - d.model_year <= 3 THEN 'newer'
             WHEN 2024 - d.model_year <= 6 THEN 'mid-age'
             ELSE 'older' END AS device_age_bucket
 FROM device_data d FULL OUTER JOIN impact_data p ON d.device_id=p.device_id
)
SELECT COUNT(*) AS joined_records, COUNT(DISTINCT device_id) AS unique_devices,
 ROUND(AVG(device_age),2) AS avg_device_age,
 ROUND(AVG(energy_savings_yr),2) AS avg_energy_kwh_per_impact,
 ROUND(SUM(co2_saved_kg_yr)/1000.0,2) AS total_co2_tonnes FROM intel_full;
