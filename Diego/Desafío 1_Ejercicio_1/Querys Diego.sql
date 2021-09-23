/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Sexo As Hombre_Mujer,
	COUNT(Sexo)
FROM SpaSucursales
GROUP BY Sexo;

SELECT
CASE 
WHEN Edad BETWEEN 18 AND 25 THEN 'Cliente Joven'
WHEN Edad BETWEEN  26 AND 40 THEN 'Cliente Adulto Joven'
WHEN Edad BETWEEN 40 AND 55 THEN 'Cliente Adulto'
ELSE 'Adulto Mayor'
END AS Categoria,
COUNT(*) AS Cantidad
FROM SpaSucursales
GROUP BY 
CASE 
WHEN Edad BETWEEN 18 AND 25 THEN 'Cliente Joven'
WHEN Edad BETWEEN  26 AND 40 THEN 'Cliente Adulto Joven'
WHEN Edad BETWEEN 40 AND 55 THEN 'Cliente Adulto'
ELSE 'Adulto Mayor'
END
ORDER BY Categoria DESC;

SELECT
CASE 
WHEN PromVisit BETWEEN 0 AND 2 THEN 'Ocasional'
WHEN PromVisit BETWEEN  2.1 AND 4 THEN 'Frecuente'
WHEN PromVisit BETWEEN 4.1 AND 6 THEN 'Casi fiel'
ELSE 'Comprometido'
END AS Categoria,
COUNT(*) AS Cantidad
FROM SpaSucursales
GROUP BY 
CASE 
WHEN PromVisit BETWEEN 0 AND 2 THEN 'Ocasional'
WHEN PromVisit BETWEEN  2.1 AND 4 THEN 'Frecuente'
WHEN PromVisit BETWEEN 4.1 AND 6 THEN 'Casi fiel'
ELSE 'Comprometido'
END
ORDER BY Categoria DESC;

SELECT
CASE 
WHEN ingresos BETWEEN 0.00 AND 500.00 THEN '1.Servicios Básicos'
WHEN ingresos BETWEEN  500.01 AND 1500.00 THEN '2.Servicios Convencionales'
WHEN ingresos BETWEEN 1500.01 AND 2500.00 THEN '3.Servicios Especiales'
ELSE '4.Servicio Premium'
END AS Categoria,
COUNT(*) AS Cantidad
FROM SpaSucursales
GROUP BY 
CASE 
WHEN ingresos BETWEEN 0.00 AND 500.00 THEN '1.Servicios Básicos'
WHEN ingresos BETWEEN  500.01 AND 1500.00 THEN '2.Servicios Convencionales'
WHEN ingresos BETWEEN 1500.01 AND 2500.00 THEN '3.Servicios Especiales'
ELSE '4.Servicio Premium'
END
ORDER BY Categoria ASC;


SELECT 
CASE
WHEN Sauna = 1 THEN 'Sauna'
WHEN Masaje = 1 THEN 'Masaje'
WHEN Hidro = 1 THEN 'Hidro'
WHEN Yoga = 1 THEN 'Yoga'
ELSE 'Otros'
END AS Oferta,
COUNT(*) AS Servicio
FROM SpaSucursales
GROUP BY
CASE
WHEN Sauna = 1 THEN 'Sauna'
WHEN Masaje = 1 THEN 'Masaje'
WHEN Hidro = 1 THEN 'Hidro'
WHEN Yoga = 1 THEN 'Yoga'
ELSE 'Otros'
END
ORDER BY Servicio ASC;