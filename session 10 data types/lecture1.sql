UPDATE products
SET properties = '
{
	"dimensions": [1, 2, 3],
    "weight": 10,
    "manufacturer": {"name": "sony"}
}
'
WHERE product_id  = 2