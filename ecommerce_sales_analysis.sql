SELECT
    o.order_id,
    c.customer_name,
    c.city,
    o.product,
    o.quantity,
    o.price,
    (o.quantity * o.price) AS total_amount,
    o.order_date
FROM ecommerce.Customers c
JOIN ecommerce.Orders o
    ON c.customer_id = o.customer_id
ORDER BY o.order_id;