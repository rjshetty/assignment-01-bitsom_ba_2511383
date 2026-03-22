## Storage Systems

The system uses a combination of OLTP databases, a data lake, and a data warehouse to support different workloads efficiently.

For real-time clinical operations, a relational OLTP database such as PostgreSQL is used to store patient records, treatment history, and transactional updates. This ensures low latency and high consistency, which is critical for doctors accessing patient data.

A data lake (e.g., Amazon S3) is used to store raw and semi-structured data, including ICU vital streams, doctor notes, and historical logs. This allows the system to handle large volumes of diverse data formats such as text and time-series data without strict schema constraints.

For reporting and analytics, a data warehouse like Snowflake is used. It stores cleaned and structured data optimized for complex queries, enabling efficient generation of monthly reports such as bed occupancy and department-wise costs.

Streaming data from ICU devices is ingested using Kafka and stored in the data lake, while also being processed in real time for alerting and monitoring.

## OLTP vs OLAP Boundary

The OLTP system consists of the hospital’s operational database (PostgreSQL), which handles real-time transactions such as patient updates, admissions, and treatments. This layer is optimized for fast inserts and updates with strict consistency.

The OLAP system begins once data is extracted from the OLTP database and moved into the data lake and data warehouse via ETL pipelines. The data lake stores raw historical data, while the warehouse stores transformed, analytics-ready data.

All analytical workloads, including reporting, machine learning model training, and natural language query processing, are performed on the OLAP side. This separation ensures that heavy analytical queries do not impact real-time hospital operations.

## Trade-offs

A major trade-off in this architecture is between data latency and system complexity. Introducing multiple layers (streaming pipelines, data lake, warehouse, ML models) increases architectural complexity and operational overhead.

However, this is necessary to support diverse use cases such as real-time ICU monitoring and batch reporting simultaneously. To mitigate this complexity, the system can adopt managed services such as AWS Glue, Snowflake, and managed Kafka, reducing infrastructure maintenance.

Additionally, implementing a data catalog and governance layer ensures better data visibility and control, helping manage the complexity effectively while maintaining scalability and performance.