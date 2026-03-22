## Anomaly Analysis
### Insert, Update, and Delete Anomalies

Database anomalies occur when improper normalization leads to data inconsistencies:

- **Insertion Anomaly**: Cannot add/insert a new customer or product unless an order exists.

  **Example:** 
  
    Since all data is stored in one table, we cannot insert a new customer without filling order_id, product_id, and quantity.
  
    If a new customer wants to register but has not placed an order yet, then we cannot insert their details into the table because order_id is required. This creates an insert anomaly.

- **Update Anomaly**: If Same data is repeated in multiple rows, then updating one row may cause inconsistency.

  **Example:** 
    
    If Same 'customer_id' appears in multiple rows(as they made multiple purchase), and If the customer changes email,then changed 'customer_email' must be updated to all rows.

    Customer details such as email and name are repeated across multiple rows. If a customer's email changes, it must be updated in all rows. Missing even one row will lead to inconsistent data.This creates an update anomaly.

- **Deletion Anomaly**: Deleting one row may unintentionally delete important data.

   **Example**: 

    If an order is deleted and it was the only record of a product or customer, all related information such as Product information, Customer info, and Sales rep info (product_id, product_name, category, customer_id, customer_name, sales_rep_name etc.) is lost. This results in a delete anomaly.

These anomalies are resolved through proper normalization.  

## Normalization Justification

Keeping everything in one table feels simpler—it’s easy to look at and query initially. However, in our current dataset, this approach creates serious long-term issues.
For example, the same customer details (like name, email, and city) are repeated across multiple rows for every order they place. If a customer's email changes, it must be updated in all rows. Missing even one row will lead to inconsistent data, this creates an update anomaly. The same problem exists for product details such as price and category, and for sales representatives’ information like email and office address.

There are also limitations when adding or removing data. We cannot store a new product or customer unless an order exists for them, which restricts flexibility. Similarly, if we delete an order that is the only record of a product, we lose all information about that product. This is risky for business operations.

By normalizing the data into separate tables, we store each type of information only once. This reduces duplication, ensures consistency, and makes updates much easier and safer. While it may seem like extra work initially, it actually simplifies maintenance and prevents data errors as the system grows.

So, normalization is not over-engineering—it’s a practical way to ensure our data remains accurate, reliable, and scalable over time.
