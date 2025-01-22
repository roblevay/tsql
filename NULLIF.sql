SELECT
	ProductID
	,UnitPrice
	,UnitPriceDiscount
	,NULLIF(UnitPriceDiscount,0)/UnitPrice*100.0 AS DiscountPercent
FROM
	SalesLT.SalesOrderDetail