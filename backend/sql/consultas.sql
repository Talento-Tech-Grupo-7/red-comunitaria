--- Insertar usuario
INSERT INTO usuario (nombre, apellido, celular, email, contrasena) VALUES (?, ?, ?, ?, ?);

--- Actualizar usuario
UPDATE usuario SET nombre = ?, apellido = ?, celular = ?, email = ?, contrasena = ? WHERE id = ?;

--- Eliminar usuario
DELETE FROM usuario WHERE id = ?;

--- Consultar usuarios
SELECT * FROM usuario;

--- Insertar energia renovable
INSERT INTO energia_renovable (tipoId, regionId, gestionUsuarioId, pais, anio, produccion, consumo) VALUES (?, ?, ?, ?, ?, ?, ?);

--- Actualizar energia renovable
UPDATE energia_renovable SET tipoId = ?, regionId = ?, gestionUsuarioId = ?, pais = ?, anio = ?, produccion = ?, consumo = ? WHERE id = ?;

--- Eliminar energia renovable
DELETE FROM energia_renovable WHERE id = ?;

--- Consultar energias renovables
SELECT * FROM energia_renovable;
