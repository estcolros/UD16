
-- Inserccion 10 tuplas de Fabricantes
insert into fabricantes(CODIGO, NOMBRE) values (7, "Xiaomi");
insert into fabricantes(CODIGO, NOMBRE) values (8, "Nvidia");
insert into fabricantes(CODIGO, NOMBRE) values (9, "AMD");
insert into fabricantes(CODIGO, NOMBRE) values (10, "Intel");
insert into fabricantes(CODIGO, NOMBRE) values (11, "Apple");
insert into fabricantes(CODIGO, NOMBRE) values (12, "Asus");
insert into fabricantes(CODIGO, NOMBRE) values (13, "Asrock");
insert into fabricantes(CODIGO, NOMBRE) values (14, "Logitech");
insert into fabricantes(CODIGO, NOMBRE) values (15, "Razer");
insert into fabricantes(CODIGO, NOMBRE) values (16, "SteelSeries");

-- Inserccion 10 tuplas de Artículos

insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (21,"3060",500, 8);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (12,"Mouse",100, 15);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (13,"Redmi9T",300, 7);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (14,"Ryzen5800X",500, 9);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (15,"I711900K",500, 10);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (16,"MacBookPro",1500, 11);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (17,"ROGPhone3",800, 12);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (18,"X570",500, 13);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (19,"Cascos",200, 14);
insert into articulos(CODIGO, NOMBRE, PRECIO, FABRICANTE) values (20,"Teclado",200, 16);

-- Ejercicio 1.1 :
select  NOMBRE 
from articulos;
-- Ejercicio 1.2 : 
select NOMBRE, PRECIO 
from articulos;
-- Ejercicio 1.3 : 
select NOMBRE, PRECIO 
from articulos 
where PRECIO<=200;
-- Ejercicio 1.4 : 
select * from articulos 
where PRECIO 
between 60 and 120; 
-- Ejercicio 1.5 : 
select NOMBRE, PRECIO*166.386 
as PRECIO from articulos;
-- Ejercicio 1.6 : 
select avg (PRECIO) as Media
 from articulos;
-- Ejercicio 1.7 : 
select avg (PRECIO) as Media 
from articulos 
where FABRICANTE=2;
-- Ejercicio 1.8 : 
select count(NOMBRE) as Num
from articulos 
where PRECIO >=180;
-- Ejercicio 1.9 : 
select NOMBRE, PRECIO as Num from articulos 
where PRECIO >=180 
order by PRECIO desc, NOMBRE asc;
-- Ejercicio 1.10 : 
select * from articulos inner join fabricantes 
where articulos.FABRICANTE=fabricantes.Codigo;
-- Ejercicio 1.11 : 
select articulos.nombre, fabricantes.nombre, precio 
from articulos inner join fabricantes 
on  articulos.FABRICANTE=fabricantes.Codigo;
-- Ejercicio 1.12 :
 select avg (precio) as PrecioMedio, Fabricante as CodigoFabricante 
 from articulos 
 group by fabricante;
-- Ejercicio 1.13 : 
select avg(precio) Precio, fabricantes.nombre as NombreFabricante 
from articulos inner join fabricantes
on articulos.FABRICANTE=fabricantes.Codigo 
group by fabricantes.nombre;
-- Ejercicio 1.14 : 
select fabricantes.nombre as NombreFabricante 
from articulos, fabricantes 
where articulos.fabricante=fabricantes.codigo 
group by fabricantes.nombre 
having avg(precio)>=150;
-- Ejercicio 1.15 : 
select nombre, precio 
from articulos 
where precio=(select min(precio) from articulos);
-- Ejercicio 1.16 :
select a.nombre as NombreArticulo, a.precio as PrecioArticulo, f.nombre as NombreFabricante
from articulos a inner join fabricantes f 
on a.fabricante=f.codigo
and a.precio =(select max(a.precio) 
from articulos a 
where a.fabricante=f.codigo);
-- Ejercicio 1.17
insert into articulos (codigo, nombre, precio, fabricante)
values (11,'Altavoces', 70,2);
-- Ejercicio 1.18
update articulos set nombre='impresora laser' 
where codigo=8;
-- Ejercicio 1.19 
update articulos 
set precio = precio*0.9;
-- Ejercicio 1.20
update articulos 
set precio=precio-10
where precio >=120;

-- Inserccion 10 tuplas de Departamentos

insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (60, "I+D", 40000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (61, "RRHH", 10000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (62, "Limpieza", 10000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (63, "Directivo", 40000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (64, "Empleados", 40000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (65, "Secretaría", 30000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (66, "Tesorería", 20000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (67, "Bedelía", 10000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (68, "Marketing", 40000);
insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO) values (69, "Psicología", 5000);

-- Inserccion 10 tuplas de Empleados

insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (12345678, "Juan","Perez",60);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (22345678, "Ramón","Perez",61);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (32345678, "Pedro","Perez",62);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (42345678, "Pepe","Perez",63);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (52345678, "Ricardo","Perez",64);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (62345678, "Jose","Perez",65);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (72345678, "Judas","Perez",66);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (82345678, "Jesus","Perez",67);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (92345678, "Walter","Perez",68);
insert into empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) values (12345679, "Billy","Perez",69);


-- Ejercicio 2.1 
select apellidos from empleados;
-- Ejercicio 2.2 
select distinct apellidos from empleados;
-- Ejercicio 2.3
select * from empleados where apellidos ='Lopez';
-- Ejercicio 2.4 
select *from empleados where apellidos='Lopez' or apellidos='Perez';
-- Ejercicio 2.5
select * from empleados where departamento =14;
-- Ejercicio 2.6
select * from empleados where departamento=37 or departamento=77;
-- Ejercicio 2.7
select * from empleados where apellidos like 'P%';
-- Ejercicio 2.8
select sum(presupuesto) from departamentos;
-- Ejercicio 2.9
select departamento, count(*) from empleados group by departamento;
-- Ejercicio 2.10
select * from empleados e inner join departamentos d
on e.departamento=d.codigo;
-- Ejercicio 2.11
select e.nombre, e.apellidos, d.nombre, d.presupuesto
from empleados e inner join departamentos d
on e.departamento=d.codigo;
-- Ejercicio 2.12
select e.nombre, apellidos 
from empleados e inner join departamentos d
where e.departamento=d.codigo
and d.presupuesto>6000;
-- Ejercicio 2.13
select * from departamentos 
where presupuesto >(select avg(presupuesto)
from departamentos);
-- Ejercicio 2.14
select d.nombre as NombreDep
from empleados e inner join departamentos d
on departamento=codigo
group by d.nombre 
having count(*)>2;
-- Ejercicio 2.15
INSERT INTO departamentos VALUES (11,'Calidad', 40000);
INSERT INTO empleados VALUES ('89267109','Esther','Vazquez',11);
-- Ejercicio 2.16
UPDATE departamentos SET presupuesto=presupuesto*0.9;
-- Ejercicio 2.17
UPDATE empleados SET departamento=14 where departamento=77;
-- Ejercicio 2.18
DELETE FROM empleados WHERE departamento=14;
-- Ejercicio 2.19
DELETE FROM empleados e 
WHERE e.departamento =(select d.codigo from departamentos d where presupuesto >=60000);
-- Ejercicio 2.20
DELETE FROM empleados;


-- Inserccion 10 tuplas de Almacenes

insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (16, "Barcelona", 10);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (7, "LLeida", 15);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (8, "Gerona", 12);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (9, "Tarragona", 20);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (10, "Valls", 40);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (11, "Reus", 30);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (12, "Salou", 10);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (13, "Cambrils", 10);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (14, "Vilaseca", 20);
insert into almacenes (CODIGO, LUGAR, CAPACIDAD) values (15, "Torredembarra", 17);

-- Inserccion 10 tuplas de Cajas
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS10", "Papeles", 10, 16);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS11", "Tijeras", 10, 7);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS12", "CInta", 5, 8);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS13", "Piedra", 12, 9);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS14", "Pinzas", 15, 10);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS15", "Cutter", 7, 11);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS16", "Arena", 2, 12);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS17", "Aceite", 4, 13);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS18", "Sal", 3, 14);
insert into cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) values ("AS19", "Pimienta", 5, 15);

-- Ejercicio 3.1
select * from almacenes;
-- Ejercicio 3.2
select * from cajas where valor >150;
-- Ejercicio 3.3
select distinct contenido from cajas;
-- Ejercicio 3.4
select avg(valor)from cajas;
-- Ejercicio 3.5
select almacen, avg (valor) 
from cajas 
group by almacen;
-- Ejercicio 3.6
select almacen, avg(valor)
from cajas
group by almacen
having avg(valor)>150;
-- Ejercicio 3.7
select numreferencia, lugar
from almacenes a inner join cajas c
where a.codigo=c.almacen;
-- Ejercicio 3.8
select count(cajas.almacen)
from cajas
group by almacen;
-- Ejercicio 3.9
select codigo from almacenes 
where capacidad<(select count(*) from cajas where almacen=codigo);
-- Ejercicio 3.10
select NumReferencia 
from cajas where almacen=(select codigo from almacenes where lugar='Bilbao');
-- Ejercicio 3.11
insert into almacenes (codigo,lugar,capacidad) values (6,'Barcelona',3);
-- Ejercicio 3.12
insert into cajas values ('H5RT', 'Papel',200,2);
-- Ejercicio 3.13
update cajas set valor=valor*0.85;

-- Ejercicio 3.14
update  cajas set valor=valor-(valor*0.20) 
where valor > (select valor from (select avg (valor) from  cajas) as v);

-- Ejercicio 3.15
DELETE FROM cajas WHERE valor<100;

-- Ejercicio 3.16
DELETE FROM cajas 
WHERE  almacen IN (SELECT codigo 
FROM (SELECT codigo FROM almacenes WHERE  capacidad < 
(SELECT COUNT(numReferencia) FROM cajas WHERE almacen >0)) AS c);


--  Inserccion 10 tuplas de Películas

insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (10, "La Sirenita", "G");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (11, "Frozen", "G");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (22, "Jumanji", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (13, "Viaje al mundo en 80 días", "G");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (14, "Pantera Negra", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (15, "Hulk", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (16, "Iron Man", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (17, "Thor", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (18, "El Caballero Oscuro", "PG13");
insert into peliculas (CODIGO, NOMBRE, CALIFICACIONEDAD) values (19, "The Joker", "18");

--  Inserccion 10 tuplas de Salas

insert into salas (CODIGO, NOMBRE, PELICULA) values (7, "CartoonNetwork", 10);
insert into salas (CODIGO, NOMBRE, PELICULA) values (8, "Jupiter", 11);
insert into salas (CODIGO, NOMBRE, PELICULA) values (9, "Marvel", 22);
insert into salas (CODIGO, NOMBRE, PELICULA) values (10, "DC", 13);
insert into salas (CODIGO, NOMBRE, PELICULA) values (11, "Dolby", 14);
insert into salas (CODIGO, NOMBRE, PELICULA) values (12, "Surround", 15);
insert into salas (CODIGO, NOMBRE, PELICULA) values (13, "8K", 16);
insert into salas (CODIGO, NOMBRE, PELICULA) values (14, "Disney", 17);
insert into salas (CODIGO, NOMBRE, PELICULA) values (15, "Pixar", 18);
insert into salas (CODIGO, NOMBRE, PELICULA) values (16, "Deportes", 19);

-- Ejercicio 4.1
select nombre from peliculas;
-- Ejercicio 4.2
select distinct peliculas.calificacionedad from peliculas;
-- Ejercicio 4.3
select * from peliculas where calificacionedad is null;
-- Ejercicio 4.4
select *from salas where pelicula is null;
-- Ejercicio 4.5
select * from peliculas p left join salas s on s.pelicula=p.codigo;
-- Ejercicio 4.6
select * from salas s left join peliculas p on s.pelicula=p.codigo;
-- Ejercicio 4.7
select p.nombre, p.codigo from salas s right join peliculas p on s.pelicula=p.codigo where s.pelicula is null;
-- Ejercicio 4.8
insert into peliculas (codigo,nombre, calificacionedad) values (12,'Uno,Dos,Tres', 7);
-- Ejercicio 4.9
update peliculas set calificacionedad=13 where calificacionedad is null;
-- Ejercicio 4.10
 delete salas.* from salas join peliculas on salas.CODIGO = peliculas.CODIGO where peliculas.CALIFICACIONEDAD = "G";