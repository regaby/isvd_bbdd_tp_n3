-- Introducción a Postgres
-- Clase de base de datos - ISVD 20/08/2020
-- creo la tabla de paises
CREATE TABLE paises (
cod_pais char(2) PRIMARY KEY,
nombre_pais text UNIQUE -- resticción / constraint
);
-- inserto paises
INSERT INTO paises (cod_pais, nombre_pais)
VALUES ('ar','Argentina'), ('py','Paraguay'),
('uy','Uruguay'),
('ch','Chile'), ('co','Colombia'), ('en','Entre Rios');

INSERT INTO paises (cod_pais, nombre_pais)
VALUES ('us', 'Estados Unidos')

-- consulto paises
-- opcion 1 (la más usada)
select * from paises
-- opcion 2 de consulta
table paises

-- consulta con filtro (condición)
select nombre_pais from paises where cod_pais <> 'ar'

select * from paises

-- elimino todos los paises (ojo el delete sin where!)
delete from paises


-- operadores lógicos de condicion
>
<
>=
<=
!=

cond1 and cond2 or cond3

-- creamos tabla de ciudades
CREATE TABLE ciudades (
nombre text NOT NULL, -- otra restricción
cod_postal varchar(9) CHECK (cod_postal <> ''),  -- otra restricción
cod_pais char(2) REFERENCES paises,
PRIMARY KEY (cod_pais, cod_postal)
);

-- inserto una ciudad
INSERT INTO ciudades
VALUES ('Posadas','3030','us');

--  consulta de ciudades
select * from ciudades

select * from paises

-- actualizo / modifico datos de ciudad
UPDATE ciudades
SET cod_postal = '3300',
cod_pais = 'ar'
WHERE nombre='Posadas';

-- consulta con orden y limite
select * from paises order by nombre_pais asc limit 3



git clone


git add archivo
git commit -m "estoy actualizando un archivo..."

git push

git pull




