## ETL Decisions

### Decision 1 — Date Format Standardization

Problem: The `date` column in the raw dataset was in `DD-MM-YYYY` format, which is not ideal for SQL date functions and can cause incorrect sorting and aggregation.

Resolution: All dates were converted to `YYYY-MM-DD` format before loading into the `dim_date` table. This ensures compatibility with SQL functions like `DATE_FORMAT()` and allows accurate month-wise and year-wise analysis.

---

### Decision 2 — Category Value Normalization

Problem: The `category` column contained inconsistent values such as `electronics`, `Electronics`, `Grocery`, and `Groceries`. This inconsistency can lead to incorrect grouping and duplicate categories during analysis.

Resolution: Category values were standardized into a consistent format: `Electronics`, `Clothing`, and `Groceries`. This ensures accurate aggregation and avoids duplication in analytical queries.

---

### Decision 3 — Handling Missing Store City Values  
Problem: Some rows had missing values in the `store_city` column, which can cause issues in reports and grouping.  

Resolution: Missing values were either filled based on known store names or handled using SQL functions like COALESCE to display "Unknown" instead of NULL during analysis.
