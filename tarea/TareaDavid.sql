--tarea
--ejercicio 2.2

declare @x int=5, @y int=10, @z int=15
select 'F (X, Y, Z) =X2+5XY+Y2+Z'=power(@x,2)+(5*@x*@y)+power(@y,2)+@z

--ejercicio 2.5
select codubigeo as ubigeo, nom_dpto as DPTO, nom_prov as PROV, nom_dto AS dto,
case when nom_prov='huaura' then 'provincia de huaura'
else 'otra provincia'
end as [mensaje]
from ubigeo

--ejercicio 2.7
select nombre as [PLAN], precioref as PRECIO_sol, cast(round(precioref/3.948,2) as decimal(9,2)) as PRECIO_DOL,
CASE WHEN cast(round(precioref/3.948,2) as decimal(9,2))>=0 AND cast(round(precioref/3.948,2) as decimal(9,2))<=20 THEN '[0,20'
     WHEN cast(round(precioref/3.948,2) as decimal(9,2))>=20  AND cast(round(precioref/3.948,2) as decimal(9,2))<27 THEN '[20,27'
	 WHEN cast(round(precioref/3.948,2) as decimal(9,2))>=27 THEN '[27,+>'
END AS 'RANGO_DOL'
from PlanInternet

--ejercicio 2.9
--a.
select codcliente as CODIGO, tipo_cliente as [tipo cliente], nombres as NOMBRES, ape_materno+' '+ape_paterno AS APELLIDOS,codzona AS ZONA, ESTADO AS ESTADO
from Cliente
WHEre tipo_cliente='p' and codzona=1 and estado=1
order by codcliente asc

--b
select codcliente as CODIGO, tipo_cliente as [tipo cliente], email as EMAIL, direccion AS DIRECCIÓN, CODZONA AS ZONA, ESTADO AS ESTADO
from Cliente
WHEre tipo_cliente='E' OR codzona=10 OR estado=0
order by direccion DESC

--C
select codcliente as CODIGO, tipo_cliente as [tipo cliente], nombres as NOMBRES, ape_materno+' '+ape_paterno AS APELLIDOS,codzona AS ZONA, ESTADO AS ESTADO
from Cliente
WHEre tipo_cliente='p' and codzona=1 and estado=1
order by NOMBRES asc, ape_paterno DESC

 --D
select tipo_cliente as [tipo cliente], email as EMAIL, direccion AS DIRECCIÓN, CODZONA AS ZONA, ESTADO AS ESTADO
from Cliente
WHEre tipo_cliente='E' OR codzona=10 OR estado=0
order by EMAIL ASC

--EJERCICIO 2.11
--a
select 
Case when codtipo=1 then 'DNI' else 'OTRO' end as TIPO_DOC,
numdoc as NUM_DOC, 
nombres+' '+ape_materno+' '+ape_paterno as CLIENTE, 
codzona as CODZONA
from Cliente
WHERE tipo_cliente='P' and codzona in (2,4,6,8)
order by codzona asc

--B
select 
Case when codtipo=1 then 'DNI' else 'OTRO' end as TIPO_DOC,
numdoc as NUM_DOC, 
nombres+' '+ape_materno+' '+ape_paterno as CLIENTE, 
fec_inicio as FEC_INICIO
from Cliente
WHERE tipo_cliente='P' and fec_inicio between '1990-01-01' AND '1990-12-31'
order by fec_inicio asc