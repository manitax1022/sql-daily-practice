SELECT o.order_id, s.supplier_name, s.region, 
       o.product_name, o.quantity, o.unit_price, o.order_date
       FROM Orders o
LEFT JOIN Suppliers s
    ON o.supplier_id = s.supplier_id
ORDER BY o.order_date DESC;