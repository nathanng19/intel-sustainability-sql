-- Entirely synthetic demonstration records.
CREATE TABLE device_data(device_id INTEGER PRIMARY KEY,device_type TEXT,model_year INTEGER);
CREATE TABLE impact_data(impact_id TEXT PRIMARY KEY,device_id INTEGER UNIQUE,region TEXT,energy_savings_yr REAL,co2_saved_kg_yr REAL);
INSERT INTO device_data VALUES(1,'Laptop',2022),(2,'Desktop',2020),(3,'Laptop',2016),(4,'Desktop',2015),(5,'Laptop',2019),(6,'Laptop',2021);
INSERT INTO impact_data VALUES('demo1',1,'North America',20,10),('demo2',2,'Europe',32,12),('demo3',3,'Asia',48,20),('demo4',4,'North America',52,24),('demo5',5,'Europe',30,11),('demo7',7,'Asia',25,9);
