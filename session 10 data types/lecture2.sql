SELECT product_id, JSON_EXTRACT(properties, '$.weight') AS weight
FROM products
WHERE product_id = 1;

SELECT product_id, properties -> '$.weight' AS weight
FROM products
WHERE product_id = 1;


SELECT product_id, properties -> '$.dimensions[0]' AS dimensions
FROM products
WHERE product_id = 2;

SELECT product_id, properties -> '$.manufacturer.name' AS manufacturer
FROM products
WHERE product_id = 2;

SELECT product_id, properties ->> '$.manufacturer.name' AS manufacturer
FROM products
WHERE product_id = 2;

SELECT product_id, properties ->> '$.manufacturer.name' AS manufacturer
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';

SELECT product_id, properties
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';