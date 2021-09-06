---------------------AGREGAR REGISTROS A LAS TABLAS
----TABLA ALUMNOS
alter PROCEDURE AlumnosAgregarIEFI

@Nombre varchar(50),
@Apellido varchar(50),
@IdLocalidad varchar(20)
AS
INSERT INTO AlumnosIEFI
         (Nombre,  Apellido, Id_Localidad)
   VALUES(@Nombre, @Apellido, @IdLocalidad)

AlumnosAgregarIEFI 'ANGELES', 'ORTIZ', 'RIO CUARTO'
  
go

----TABLAS LOCALIDAD--
alter PROCEDURE AgregarLocalidad
@Nombre varchar(30),
@IdProvincia int
AS
INSERT INTO LocalidadIEFI
         (Nombre, Id_Provincia)
   VALUES(@Nombre,@IdProvincia )

AgregarLocalidad 'SEBASTIAN ELCANO' 

----TABLA PROVINCIA---
alter PROCEDURE AgregarProvincia
@Nombre varchar(30),
@IdProvincia int
AS
INSERT INTO LocalidadIEFI
         (Nombre, Id_Provincia)
   VALUES(@Nombre,@IdProvincia )

AgregarLocalidad 'SEBASTIAN ELCANO', 10
go

-----------------------ELIMINAR REGISTROS DE TABLAS---
----TABLA ALUMNOS----
ALTER procedure EliminarAlumnos
@Nombre varchar(50)
as
delete from AlumnosIEFI
where Nombre = @Nombre

EliminarAlumnos 'EZEQUIEL'
go


----TABLA LOCALIDAD---
ALTER PROCEDURE EliminarLocalidad
@Nombre varchar(30)
as
delete from LocalidadIEFI
where Nombre = @Nombre

EliminarLocalidad 'CORDOBA'
go

----TABLA PROVINCIA---
ALTER PROCEDURE EliminarProvincia
@Nombre varchar(20)
as
delete from ProvinciasIEFI
where NombreProvincia = @Nombre

EliminarProvincia 'SALTA'
go

------------------------LISTAR TABLAS---
---TABLA ALUMNOS---
select * from AlumnosIEFI
where Nombre = 'DIEGO'
go
---TABLA LOCALIDAD---
select * from LocalidadIEFI
where Nombre = 'RIO SECO'
go
---TABLA PROVINCIAS---
select * from ProvinciasIEFI
where NombreProvincia = 'TUCUMAN'
go


------------------MODIFICAR REGISTROS DE TABLAS
-------TABLA ALUMNOS

create procedure CambiarAlumnos
as
UPDATE AlumnosIEFI SET Apellido = 'Caro' WHERE Apellido = 'Cunel'
go

-------TABLAS LOCALIDAD-------


CREATE procedure ModificarLocalidad
as
UPDATE LocalidadIEFI SET  Nombre= 'SAN FCO DEL CHAÑAR' WHERE Nombre = 'CRUZ DEL EJE'
go

------TABLA PROVINCIAS--------
CREATE procedure ModificarProvincias
as
UPDATE ProvinciasIEFI SET NombreProvincia = 'ROSARIO' WHERE NombreProvincia = 'SANTA FE'
go

  