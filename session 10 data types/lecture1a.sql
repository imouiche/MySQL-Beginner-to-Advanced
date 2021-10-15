UPDATE products
SET properties = JSON_OBJECT(
	'weight', 40,
    'dimensions', JSON_ARRAY(1, 2, 3),
    'manufacturer', JSON_OBJECT('name', 'sony')
)
WHERE product_id  = 1