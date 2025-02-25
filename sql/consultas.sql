--- Insertar usuario
INSERT INTO usuario (nombre, apellido, celular, email, contrasena) VALUES (?, ?, ?, ?, ?);

--- Actualizar usuario
UPDATE usuario SET nombre = ?, apellido = ?, celular = ?, email = ?, contrasena = ? WHERE id = ?;

--- Eliminar usuario
DELETE FROM usuario WHERE id = ?;

--- Consultar usuarios
SELECT * FROM usuario;

--- Insertar energia renovable
INSERT INTO energiaRenovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES (?, ?, ?, ?, ?, ?, ?);

--- Actualizar energia renovable
UPDATE energiaRenovable SET tipoId = ?, regionId = ?, gestionUsuarioId = ?, pais = ?, anio = ?, produccion = ?, consumo = ? WHERE id = ?;

--- Eliminar energia renovable
DELETE FROM energiaRenovable WHERE id = ?;

--- Consultar energias renovables
SELECT te.nombre tipo, r.nombre region, er.pais, er.anio, er.produccion, er.consumo FROM energiaRenovable er
LEFT JOIN tipoEnergia te ON er.tipoId = te.id
LEFT JOIN region r ON er.regionId = r.id;
