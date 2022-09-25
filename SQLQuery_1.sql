-- EJERCITACION SQL GESTION DE DATOS 2022 UTN FRBA --

-- Ejemplos de Select

select clie_codigo, clie_razon_social, 1+1 as Dos, GETDATE() as Today, 'Columna Constante' as Constante
from Cliente
WHERE clie_codigo in (0001, 0002, 0003);


select clie_codigo, clie_razon_social, 1+1 as Dos, GETDATE() as Today, 'Columna Constante' as Constante
from Cliente
WHERE clie_codigo between 0001 and 0008

select clie_codigo, clie_razon_social, 1+1 as Dos, GETDATE() as Today, 'Columna Constante' as Constante
from Cliente
WHERE clie_razon_social LIKE '%MERCEDES%'

select clie_codigo, clie_razon_social, clie_telefono
from Cliente
WHERE clie_codigo between 0001 and 0008 and clie_telefono IS NULL

select clie_codigo, clie_razon_social, clie_telefono
from Cliente
WHERE clie_codigo between 0001 and 0008 and clie_telefono IS NULL
ORDER BY clie_codigo DESC

SELECT prod_familia, count(*) as Cantidad
FROM Producto
GROUP BY prod_familia
ORDER BY Cantidad ASC


SELECT count(*) as Cantidad2
FROM Producto

SELECT
    count(DISTINCT prod_rubro)
from producto p


SELECT count(prod_rubro)
from producto p
group by prod_rubro
having count(prod_rubro) > 100

SELECT
    case when clie_codigo <= '00010' then 'menor a 10'
else 'mayor a 10'
end as clasificacion,
    ISNULL(clie_telefono, 'ES NULO'),
    clie_codigo
from CLIENTE
where clie_telefono is NULL;

SELECT
    *
from
    producto
where 
prod_codigo between '0001' and '0008'
ORDER by prod_detalle

-- EJERCICIO 1

SELECT
    clie_codigo,
    clie_razon_social
from Cliente
where clie_limite_credito > 1000
ORDER BY clie_codigo