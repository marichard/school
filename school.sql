/* Multiple table analysis
 Problem: discrepancy between the orders and products tables in the database.
Task: Use a join to figure out which products exist in one table but not the other.
   */
SELECT
    p.product_id,
    p.product_name,
    o.product_id AS orders_product_id
FROM products p
LEFT JOIN orders o
    ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

-- Solution: products shown haven't been ordered yet