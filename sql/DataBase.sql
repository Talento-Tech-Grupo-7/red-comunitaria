DROP DATABASE IF EXISTS transicionEnergetica;

CREATE DATABASE IF NOT EXISTS transicionEnergetica;

USE transicionEnergetica;

CREATE TABLE IF NOT EXISTS permiso (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  consulta BOOLEAN NOT NULL,
  elimina BOOLEAN NOT NULL,
  actualiza BOOLEAN NOT NULL,
  inserta BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS region (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS tipoEnergia (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS perfil (
  id INT AUTO_INCREMENT PRIMARY KEY,
  permisoId INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(300) NOT NULL,  
  FOREIGN KEY (permisoId) REFERENCES permiso(id)
);


CREATE TABLE IF NOT EXISTS usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  perfilId INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  celular BIGINT NOT NULL,
  email VARCHAR(100) NOT NULL,
  contrasena VARCHAR(100) NOT NULL,  
  FOREIGN KEY (perfilId) REFERENCES perfil(id)
);

CREATE TABLE IF NOT EXISTS energiaRenovable (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipoId INT NOT NULL,
  regionId INT NOT NULL,
  gestionUsuarioId INT NOT NULL,
  pais VARCHAR(100) NOT NULL,
  anio SMALLINT NOT NULL,
  produccion FLOAT NOT NULL,
  consumo FLOAT NOT NULL,
  FOREIGN KEY (tipoId) REFERENCES tipoEnergia(id),
  FOREIGN KEY (regionId) REFERENCES region(id),
  FOREIGN KEY (gestionUsuarioId) REFERENCES usuario(id)
);

INSERT INTO region (nombre, descripcion) VALUES
('Andina', 'Región montañosa central de Colombia.'),
('Caribe', 'Región costera al norte de Colombia.'),
('Pacífica', 'Región costera al oeste de Colombia.'),
('Orinoquía', 'Región de llanuras al este de Colombia.'),
('Amazonía', 'Región selvática al sur de Colombia.'),
('Insular', 'Región compuesta por islas de Colombia.');

INSERT INTO permiso (nombre, consulta, elimina, actualiza, inserta) VALUES
('Administrador', 1, 1, 1, 1),
('Usuario', 1, 0, 0, 0),
('Editor', 1, 0, 1, 1),
('Supervisor', 1, 1, 1, 0),
('Invitado', 1, 0, 0, 0);

INSERT INTO tipoEnergia (nombre, descripcion) VALUES
('Solar', 'Energía obtenida a partir de la radiación solar.'),
('Eólica', 'Energía obtenida a partir del viento.'),
('Hidráulica', 'Energía obtenida a partir del agua en movimiento.'),
('Biomasa', 'Energía obtenida a partir de materia orgánica.'),
('Geotérmica', 'Energía obtenida a partir del calor interno de la Tierra.'),
('Mareomotriz', 'Energía obtenida a partir de las mareas.');

INSERT INTO perfil (permisoId, nombre, descripcion) VALUES
(1, 'Administrador General', 'Tiene acceso completo a todas las funcionalidades del sistema.'),
(2, 'Usuario Básico', 'Tiene acceso limitado a las funcionalidades del sistema.'),
(3, 'Editor de Contenidos', 'Puede editar y publicar contenidos en el sistema.'),
(4, 'Supervisor de Operaciones', 'Supervisa las operaciones y tiene permisos de consulta y actualización.'),
(5, 'Invitado', 'Tiene acceso solo a la consulta de datos.');

INSERT INTO usuario (perfilId, nombre, apellido, celular, email, contrasena) VALUES
(1, 'Juan', 'Pérez', 3001234567, 'juan.perez@example.com', 'password123'),
(2, 'María', 'Gómez', 3012345678, 'maria.gomez@example.com', 'password123'),
(3, 'Carlos', 'Rodríguez', 3023456789, 'carlos.rodriguez@example.com', 'password123'),
(4, 'Ana', 'Martínez', 3034567890, 'ana.martinez@example.com', 'password123'),
(5, 'Luis', 'Fernández', 3045678901, 'luis.fernandez@example.com', 'password123');


INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 1, 1, 'Colombia', 2020, 1500.00, 1200.00),
(1, 1, 1, 'Colombia', 2021, 1600.00, 1300.00),
(1, 1, 1, 'Colombia', 2022, 1700.00, 1400.00),
(1, 1, 1, 'Colombia', 2023, 1800.00, 1500.00),
(1, 1, 1, 'Colombia', 2024, 1900.00, 1600.00),
(2, 1, 1, 'Colombia', 2020, 2000.00, 1700.00),
(2, 1, 1, 'Colombia', 2021, 2100.00, 1800.00),
(2, 1, 1, 'Colombia', 2022, 2200.00, 1900.00),
(2, 1, 1, 'Colombia', 2023, 2300.00, 2000.00),
(2, 1, 1, 'Colombia', 2024, 2400.00, 2100.00),
(3, 1, 1, 'Colombia', 2020, 3000.00, 2500.00),
(3, 1, 1, 'Colombia', 2021, 3100.00, 2600.00),
(3, 1, 1, 'Colombia', 2022, 3200.00, 2700.00),
(3, 1, 1, 'Colombia', 2023, 3300.00, 2800.00),
(3, 1, 1, 'Colombia', 2024, 3400.00, 2900.00),
(4, 1, 1, 'Colombia', 2020, 1000.00, 800.00),
(4, 1, 1, 'Colombia', 2021, 1100.00, 900.00),
(4, 1, 1, 'Colombia', 2022, 1200.00, 1000.00),
(4, 1, 1, 'Colombia', 2023, 1300.00, 1100.00),
(4, 1, 1, 'Colombia', 2024, 1400.00, 1200.00),
(5, 1, 1, 'Colombia', 2020, 500.00, 400.00),
(5, 1, 1, 'Colombia', 2021, 600.00, 500.00),
(5, 1, 1, 'Colombia', 2022, 700.00, 600.00),
(5, 1, 1, 'Colombia', 2023, 800.00, 700.00),
(5, 1, 1, 'Colombia', 2024, 900.00, 800.00);

INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 2, 2, 'Colombia', 2020, 1400.00, 1100.00),
(1, 2, 2, 'Colombia', 2021, 1500.00, 1200.00),
(1, 2, 2, 'Colombia', 2022, 1600.00, 1300.00),
(1, 2, 2, 'Colombia', 2023, 1700.00, 1400.00),
(1, 2, 2, 'Colombia', 2024, 1800.00, 1500.00),
(2, 2, 2, 'Colombia', 2020, 1900.00, 1600.00),
(2, 2, 2, 'Colombia', 2021, 2000.00, 1700.00),
(2, 2, 2, 'Colombia', 2022, 2100.00, 1800.00),
(2, 2, 2, 'Colombia', 2023, 2200.00, 1900.00),
(2, 2, 2, 'Colombia', 2024, 2300.00, 2000.00),
(3, 2, 2, 'Colombia', 2020, 2400.00, 2100.00),
(3, 2, 2, 'Colombia', 2021, 2500.00, 2200.00),
(3, 2, 2, 'Colombia', 2022, 2600.00, 2300.00),
(3, 2, 2, 'Colombia', 2023, 2700.00, 2400.00),
(3, 2, 2, 'Colombia', 2024, 2800.00, 2500.00),
(4, 2, 2, 'Colombia', 2020, 900.00, 700.00),
(4, 2, 2, 'Colombia', 2021, 1000.00, 800.00),
(4, 2, 2, 'Colombia', 2022, 1100.00, 900.00),
(4, 2, 2, 'Colombia', 2023, 1200.00, 1000.00),
(4, 2, 2, 'Colombia', 2024, 1300.00, 1100.00),
(6, 2, 2, 'Colombia', 2020, 400.00, 300.00),
(6, 2, 2, 'Colombia', 2021, 500.00, 400.00),
(6, 2, 2, 'Colombia', 2022, 600.00, 500.00),
(6, 2, 2, 'Colombia', 2023, 700.00, 600.00),
(6, 2, 2, 'Colombia', 2024, 800.00, 700.00);

INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 3, 3, 'Colombia', 2020, 1300.00, 1000.00),
(1, 3, 3, 'Colombia', 2021, 1400.00, 1100.00),
(1, 3, 3, 'Colombia', 2022, 1500.00, 1200.00),
(1, 3, 3, 'Colombia', 2023, 1600.00, 1300.00),
(1, 3, 3, 'Colombia', 2024, 1700.00, 1400.00),
(2, 3, 3, 'Colombia', 2020, 1800.00, 1500.00),
(2, 3, 3, 'Colombia', 2021, 1900.00, 1600.00),
(2, 3, 3, 'Colombia', 2022, 2000.00, 1700.00),
(2, 3, 3, 'Colombia', 2023, 2100.00, 1800.00),
(2, 3, 3, 'Colombia', 2024, 2200.00, 1900.00),
(3, 3, 3, 'Colombia', 2020, 2300.00, 2000.00),
(3, 3, 3, 'Colombia', 2021, 2400.00, 2100.00),
(3, 3, 3, 'Colombia', 2022, 2500.00, 2200.00),
(3, 3, 3, 'Colombia', 2023, 2600.00, 2300.00),
(3, 3, 3, 'Colombia', 2024, 2700.00, 2400.00),
(4, 3, 3, 'Colombia', 2020, 800.00, 600.00),
(4, 3, 3, 'Colombia', 2021, 900.00, 700.00),
(4, 3, 3, 'Colombia', 2022, 1000.00, 800.00),
(4, 3, 3, 'Colombia', 2023, 1100.00, 900.00),
(4, 3, 3, 'Colombia', 2024, 1200.00, 1000.00),
(6, 3, 3, 'Colombia', 2020, 400.00, 300.00),
(6, 3, 3, 'Colombia', 2021, 500.00, 400.00),
(6, 3, 3, 'Colombia', 2022, 600.00, 500.00),
(6, 3, 3, 'Colombia', 2023, 700.00, 600.00),
(6, 3, 3, 'Colombia', 2024, 800.00, 700.00);


INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 4, 4, 'Colombia', 2020, 1200.00, 900.00),
(1, 4, 4, 'Colombia', 2021, 1300.00, 1000.00),
(1, 4, 4, 'Colombia', 2022, 1400.00, 1100.00),
(1, 4, 4, 'Colombia', 2023, 1500.00, 1200.00),
(1, 4, 4, 'Colombia', 2024, 1600.00, 1300.00),
(2, 4, 4, 'Colombia', 2020, 1700.00, 1400.00),
(2, 4, 4, 'Colombia', 2021, 1800.00, 1500.00),
(2, 4, 4, 'Colombia', 2022, 1900.00, 1600.00),
(2, 4, 4, 'Colombia', 2023, 2000.00, 1700.00),
(2, 4, 4, 'Colombia', 2024, 2100.00, 1800.00),
(3, 4, 4, 'Colombia', 2020, 2200.00, 1900.00),
(3, 4, 4, 'Colombia', 2021, 2300.00, 2000.00),
(3, 4, 4, 'Colombia', 2022, 2400.00, 2100.00),
(3, 4, 4, 'Colombia', 2023, 2500.00, 2200.00),
(3, 4, 4, 'Colombia', 2024, 2600.00, 2300.00),
(4, 4, 4, 'Colombia', 2020, 700.00, 500.00),
(4, 4, 4, 'Colombia', 2021, 800.00, 600.00),
(4, 4, 4, 'Colombia', 2022, 900.00, 700.00),
(4, 4, 4, 'Colombia', 2023, 1000.00, 800.00),
(4, 4, 4, 'Colombia', 2024, 1100.00, 900.00),
(5, 4, 4, 'Colombia', 2020, 600.00, 400.00),
(5, 4, 4, 'Colombia', 2021, 700.00, 500.00),
(5, 4, 4, 'Colombia', 2022, 800.00, 600.00),
(5, 4, 4, 'Colombia', 2023, 900.00, 700.00),
(5, 4, 4, 'Colombia', 2024, 1000.00, 800.00);

INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 5, 5, 'Colombia', 2020, 1100.00, 800.00),
(1, 5, 5, 'Colombia', 2021, 1200.00, 900.00),
(1, 5, 5, 'Colombia', 2022, 1300.00, 1000.00),
(1, 5, 5, 'Colombia', 2023, 1400.00, 1100.00),
(1, 5, 5, 'Colombia', 2024, 1500.00, 1200.00),
(3, 5, 5, 'Colombia', 2020, 2100.00, 1800.00),
(3, 5, 5, 'Colombia', 2021, 2200.00, 1900.00),
(3, 5, 5, 'Colombia', 2022, 2300.00, 2000.00),
(3, 5, 5, 'Colombia', 2023, 2400.00, 2100.00),
(3, 5, 5, 'Colombia', 2024, 2500.00, 2200.00),
(4, 5, 5, 'Colombia', 2020, 600.00, 400.00),
(4, 5, 5, 'Colombia', 2021, 700.00, 500.00),
(4, 5, 5, 'Colombia', 2022, 800.00, 600.00),
(4, 5, 5, 'Colombia', 2023, 900.00, 700.00),
(4, 5, 5, 'Colombia', 2024, 1000.00, 800.00),
(5, 5, 5, 'Colombia', 2020, 500.00, 300.00),
(5, 5, 5, 'Colombia', 2021, 600.00, 400.00),
(5, 5, 5, 'Colombia', 2022, 700.00, 500.00),
(5, 5, 5, 'Colombia', 2023, 800.00, 600.00),
(5, 5, 5, 'Colombia', 2024, 900.00, 700.00);

INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES
(1, 6, 1, 'Colombia', 2020, 1000.00, 800.00),
(1, 6, 1, 'Colombia', 2021, 1100.00, 900.00),
(1, 6, 1, 'Colombia', 2022, 1200.00, 1000.00),
(1, 6, 1, 'Colombia', 2023, 1300.00, 1100.00),
(1, 6, 1, 'Colombia', 2024, 1400.00, 1200.00),
(2, 6, 1, 'Colombia', 2020, 1500.00, 1200.00),
(2, 6, 1, 'Colombia', 2021, 1600.00, 1300.00),
(2, 6, 1, 'Colombia', 2022, 1700.00, 1400.00),
(2, 6, 1, 'Colombia', 2023, 1800.00, 1500.00),
(2, 6, 1, 'Colombia', 2024, 1900.00, 1600.00),
(4, 6, 1, 'Colombia', 2020, 500.00, 400.00),
(4, 6, 1, 'Colombia', 2021, 600.00, 500.00),
(4, 6, 1, 'Colombia', 2022, 700.00, 600.00),
(4, 6, 1, 'Colombia', 2023, 800.00, 700.00),
(4, 6, 1, 'Colombia', 2024, 900.00, 800.00),
(6, 6, 1, 'Colombia', 2020, 400.00, 300.00),
(6, 6, 1, 'Colombia', 2021, 500.00, 400.00),
(6, 6, 1, 'Colombia', 2022, 600.00, 500.00),
(6, 6, 1, 'Colombia', 2023, 700.00, 600.00),
(6, 6, 1, 'Colombia', 2024, 800.00, 700.00);


select * from usuario;

select * from usuario;

delete from usuario where nombre ='Henry';