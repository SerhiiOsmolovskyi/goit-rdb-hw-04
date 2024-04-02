SELECT 
    categories.name AS category_name,
    COUNT(*) AS row_count,
    ROUND(AVG(order_details.quantity), 0) AS avg_quantity
FROM 
    orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
GROUP BY 
    categories.name
HAVING
    avg_quantity > 21
ORDER BY 
    row_count DESC
LIMIT 4 OFFSET 1;