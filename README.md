# Avito End-to-End Data Engineering Pipeline

## Overview

This project simulates a production-style data engineering pipeline that ingests Avito car listing data, processes it using Python ETL scripts, orchestrates workflows with Apache Airflow, and loads data into a PostgreSQL star-schema warehouse for analytics.

## Architecture

Incoming CSV → Python ETL → Airflow orchestration → PostgreSQL Data Warehouse → Analytics

## Tech Stack

* Python (ETL & data processing)
* Apache Airflow (workflow orchestration)
* PostgreSQL (data warehouse)
* Docker / Docker Compose (containerization)
* Git & GitHub (version control)

## Data Warehouse Schema

Star schema with:

* dim_vehicle
* dim_seller
* dim_time
* fact_listings

## Project Structure

```
dags/      → Airflow DAGs
data/      → Raw and archived datasets
etl/       → Python ETL scripts
sql/       → Warehouse schema & SQL files
```

## Goals

* Build production-style ETL pipelines
* Practice orchestration with Airflow
* Design analytics-ready data warehouses
* Demonstrate end-to-end data engineering skills
