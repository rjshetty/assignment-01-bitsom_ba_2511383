## Architecture Recommendation

I recommend a **Data Lakehouse** architecture for this food delivery startup.

First, the startup deals with highly diverse data types: structured (payment transactions), semi-structured (GPS logs, JSON reviews), and unstructured (menu images). A traditional data warehouse is not optimized for unstructured data, whereas a data lakehouse can efficiently store and process all formats in a unified platform.

Second, the business requires both real-time analytics and reliable reporting. A data lake alone lacks strong governance and performance optimization for analytics, while a lakehouse provides ACID transactions, schema enforcement, and high-performance querying. This ensures accurate financial reporting alongside fast operational insights like delivery tracking and customer behavior.

Third, scalability and cost efficiency are critical for a fast-growing startup. A lakehouse leverages low-cost object storage while enabling warehouse-like query performance using engines such as DuckDB, Spark, or Delta Lake. This allows the company to scale storage and compute independently without significantly increasing costs.
