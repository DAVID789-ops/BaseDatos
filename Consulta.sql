declare @a int=10 --declarar vairble a del tipo entero con valor 10--
declare @b int=3  

select 'suma'=@a+@b, @a-@b, @a*@b, @a/@b

--concatenación
declare @sujeto varchar(50)='El estudiante', @predicado varchar(50)='asistio a clases'
select @sujeto+@predicado

--progresion aritmetica creciente
declare @t1 int=1, @n int=100, @r int=2
select 'tn'

select power(@t1,2)--para colocar un numero aleatorio
--tarea
--ejercicio 1

declare @x int=5, @y int=10, @z int=15
select 'F (X, Y, Z) =X2+5XY+Y2+Z'=power(@x,2)+(5*@x*@y)+power(@y,2)+@z

--select
-- ¿cuales son los ubigeos que tienen nombre huaura?
SELECT nom_dpto,nom_prov,nom_dto
from Ubigeo
where nom_dpto='LIMA' and nom_prov='HUAURA'