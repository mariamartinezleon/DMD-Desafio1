/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Sexo As Hombre_Mujer,
	COUNT(Sexo)
FROM SpaSucursales
GROUP BY Sexo;

SELECT
CASE 
WHEN Edad BETWEEN 18 AND 25 THEN 'Cliente Cobre'
WHEN Edad BETWEEN  26 AND 40 THEN 'Cliente Plata'
WHEN Edad BETWEEN 40 AND 55 THEN 'Cliente Oro'
ELSE 'Cliente Platino'
END AS Categoria,
COUNT(*) AS Cantidad
FROM SpaSucursales
GROUP BY 
CASE 
WHEN Edad BETWEEN 18 AND 25 THEN 'Cliente Cobre'
WHEN Edad BETWEEN  26 AND 40 THEN 'Cliente Plata'
WHEN Edad BETWEEN 40 AND 55 THEN 'Cliente Oro'
ELSE 'Cliente Platino'
END 

select t.range as [score range], count(*) as [number of occurences]
from (
  select case  
    when score between 0 and 9 then ' 0- 9'
    when score between 10 and 19 then '10-19'
    else '20-99' end as range
  from scores) t
group by t.range