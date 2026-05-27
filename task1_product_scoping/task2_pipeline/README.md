# Task 2 - Data Pipeline Building

## Project Overview

This project demonstrates a simple end-to-end data engineering pipeline using the CoinGecko public API and Google BigQuery.

The objective of the pipeline is to automate the process of fetching, transforming, and storing cryptocurrency market data so it can be queried and analysed efficiently.

The project was designed to simulate a real-world workflow where external data needs to be integrated into a central analytics system.

---

# API Chosen

## CoinGecko API

The CoinGecko API was selected because:
- it is publicly available,
- does not require authentication,
- provides structured JSON data,
- and contains useful analytical market information.

The API returns cryptocurrency metrics such as:
- current price,
- market capitalisation,
- trading volume,
- market ranking,
- and price change percentages.

---

# Pipeline Workflow

The pipeline follows these steps:

1. Fetch live cryptocurrency data from CoinGecko API
2. Convert raw JSON response into tabular format using pandas
3. Clean and transform the dataset
4. Handle null values and inconsistent fields
5. Create derived analytical fields
6. Store transformed data in Google BigQuery
7. Query the stored data using SQL

---

# Technologies Used

- Python
- Google Colab
- Pandas
- CoinGecko API
- Google BigQuery
- SQL

---

# Data Transformation

The raw API response was transformed using pandas.

Transformations included:
- selecting relevant fields,
- renaming columns,
- handling null values,
- converting timestamps,
- and generating analytical metrics.

---

# Derived Analytical Field

A derived field called `market_strength` was created using:

market_strength = market_cap / total_volume

This metric helps estimate the relative market stability and strength of each cryptocurrency.

---

# BigQuery Integration

The transformed dataset was uploaded into Google BigQuery under:

Dataset:
crypto_market_data

Table:
crypto_prices

BigQuery was used because it provides scalable cloud-based analytical storage and SQL querying capabilities.

---

# SQL Analysis

The SQL query included in this project identifies cryptocurrencies with the highest market strength values.

The query demonstrates:
- sorting,
- filtering,
- and analytical querying capabilities within BigQuery.

---

# Production Considerations

## Scheduling

In a production environment, this pipeline could be scheduled using:
- Apache Airflow
- Google Cloud Scheduler
- Cron Jobs

The pipeline could run daily or hourly depending on business requirements.

---

## Failure Monitoring

Pipeline failures could be monitored using:
- logging systems,
- retry mechanisms,
- automated alerts,
- and monitoring dashboards.

---

## Scaling Strategy

If the pipeline needed to scale to significantly larger data volumes, improvements could include:
- partitioned BigQuery tables,
- incremental data loading,
- parallel API requests,
- and workflow orchestration tools.

---

# Future Improvements

Possible future enhancements include:
- real-time data streaming,
- automated dashboard integration,
- anomaly detection,
- historical trend tracking,
- and machine learning-based forecasting.

---

# Conclusion

This project demonstrates a simple but complete data engineering workflow involving:
- API integration,
- data transformation,
- cloud storage,
- and SQL-based analytics.

The pipeline focuses on clarity, reliability, and practical implementation while remaining easy to understand and extend.
