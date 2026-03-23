## Storage Systems

### 1. Patient & Medicine Data (OLTP)

* **Storage:** Relational Database (MySQL / PostgreSQL)
* **Why:**

  * Handles day-to-day transactions
  * Fast updates & consistency
  * Suitable for structured hospital data

### 2. ICU Real-time Data

* **Storage:** Time-Series Database
* **Why:**

  * Optimized for continuous sensor data
  * Handles high-frequency real-time data
  * Efficient for monitoring vitals

### 3. Data Warehouse (OLAP)

* **Storage:** Data Warehouse (Snowflake)
* **Why:**

  * Optimized for analytics & reporting
  * Handles large historical datasets
  * Fast query performance for dashboards

### 4. AI & NLP Processing Data

* **Storage:** Data Lake (AWS S3 / Azure Data Lake)
* **Why:**

  * Stores raw + unstructured data
  * Useful for machine learning models
  * Flexible and scalable
  

## OLTP vs OLAP Boundary

* **OLTP (Left Side):**

  * Patient Data
  * Medicine Data
  * ICU Devices
  * (Transactional systems)

* **ETL Layer:**

  * Extracts & transforms data

* **OLAP (Right Side):**

  * Data Warehouse (OLAP)
  * Analytics (Reports + AI Models)

OLTP handles real-time transactions, and after ETL processing, data moves into OLAP for analytics and reporting.


## Trade-offs
**Significant trade-off**:

* Batch processing → delayed insights
* Real-time processing → complex & costly
* In design using both batch + real-time ingestion

**How to mitigate it?**

Use Hybrid Approach

* Real-time → ICU alerts
* Batch → reports & AI models

There is a trade-off between real-time processing and system complexity. I mitigate it by using a hybrid approach with both batch and streaming data processing.

