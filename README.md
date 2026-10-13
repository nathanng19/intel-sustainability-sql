# Intel Sustainability Impact Analysis
**Nathan Nguyen** | SQL portfolio project

Global Career Accelerator coursework using simulated device-repurposing data modeled on sustainability analysis. This is not an Intel employment project or a report of actual Intel operating results.

## Business question
Which device types, age groups, and regions should a repurposing program examine to maximize estimated annual energy savings and avoided carbon emissions?

## Techniques
FULL OUTER JOIN, calculated device age, CASE age buckets, common table expressions, COUNT DISTINCT, AVG, SUM, ROUND, GROUP BY, and kilogram-to-metric-tonne conversion.

## Run the synthetic demo
~~~sh
python run_demo.py
~~~
Requires Python with SQLite 3.39 or later. No third-party packages are needed. The demo contains six device rows, an unmatched device, and an unmatched impact record to illustrate join behavior. Its outputs are demonstration results, not the original coursework findings.

## Reported coursework findings
The written assignment reported estimated annual savings of 48.02 kWh for older devices, 32.04 kWh for mid-age devices, and 19.07 kWh for newer devices. Recommendations emphasized older-device recovery and laptop repurposing while considering volume.

These hypothetical findings have not been independently rerun because the original database was not included in the downloaded files.

## Portfolio refinements
Queries were curated from the submitted work. They now include a self-contained CTE, an unknown-age bucket, distinct-device counts, and explicit units. Carbon summaries consistently use total savings, matching the original SUM-based queries. These are documented cleanup changes, not verbatim submitted queries.

## Data limitations
Joined rows are not necessarily unique devices. Repeated impact records can duplicate device averages and overstate totals; verify table grain and unmatched rows before drawing conclusions. The synthetic demo enforces one impact record per device; the original constraints are unknown.

To use the course database, change device_data and impact_data to intel.device_data and intel.impact_data and confirm dialect and columns. Original course data and assignment prompts are not redistributed.

Author: [nathanng19](https://github.com/nathanng19)
