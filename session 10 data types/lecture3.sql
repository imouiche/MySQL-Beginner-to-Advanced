UPDATE products
SET properties = JSON_SET(
	properties,
    '$.weight', 30,
    '$.age', 23
)
WHERE product_id  = 1;


UPDATE products
SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id  = 1