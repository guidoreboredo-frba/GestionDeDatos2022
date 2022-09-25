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

-- EJERCICIO 1

