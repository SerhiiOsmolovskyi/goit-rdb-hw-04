SELECT count(*) 
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN products ON order_details.product_id = products.id
RIGHT JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id;

/*
  Коли ми замінюємо деякі з операторів INNER JOIN на LEFT JOIN або RIGHT JOIN,
  ми можемо отримати різні результати через різні типи з'єднань таблиць.
  Наприклад, якщо ми замінимо INNER JOIN на LEFT JOIN, то це означатиме,
  що всі рядки з таблиці зліва від з'єднання будуть включені в результат,
  навіть якщо вони не мають відповідних записів у таблицях праворуч.
  Таким чином, кількість рядків у результаті може збільшитися.
  В нашому прикладі кількість рядків не змінюється при заміні на INNER на LEFT, 
  але стається помилка при заміні на RIGHT усіх операторів у записі.
*/
