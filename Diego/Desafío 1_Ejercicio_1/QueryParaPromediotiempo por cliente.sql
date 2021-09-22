SELECT SpaEscalon_i20191007.Sexo,SpaEscalon_i20191007.PromVisit
FROM SpaEscalon_i20191007
INNER JOIN SpaCentro_m20191007
	ON SpaEscalon_i20191007.PromVisit = SpaCentro_m20191007.PromVisit
INNER JOIN SpaSantaTecla_m20191007
	ON SpaCentro_m20191007.PromVisit= SpaSantaTecla_m20191007.PromVisit
WHERE SpaEscalon_i20191007.PromVisit >= 1.5 
ORDER BY SpaEscalon_i20191007.PromVisit ASC;
