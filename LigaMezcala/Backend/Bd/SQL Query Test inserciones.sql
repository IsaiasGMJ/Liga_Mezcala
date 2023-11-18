
-- Departamento de Operaciones
INSERT INTO empleados.departamento (nombre_departamento, descripcion)
VALUES ('Operaciones', 'Esencial para gestionar las canchas, programar partidos y supervisar el mantenimiento. Este departamento es importante en cualquier ubicaci�n, ya que se encarga de la gesti�n diaria de las instalaciones.'),
-- Departamento de Mantenimiento
('Mantenimiento', 'Asegurar que las canchas est�n en buen estado es crucial para la satisfacci�n de los clientes y la seguridad de los jugadores. Esto es importante en cualquier lugar, incluyendo zonas rurales.'),
-- Departamento de Servicio al Cliente
('Servicio al Cliente', 'La atenci�n al cliente es fundamental para mantener a los clientes satisfechos y fomentar la fidelidad, independientemente de la ubicaci�n de la empresa.'),
-- Departamento de Seguridad
('Seguridad', 'La seguridad es importante en cualquier ubicaci�n, por lo que contar con personal o medidas de seguridad para proteger a los jugadores y espectadores es esencial.'),
-- Departamento Legal
('Legal', 'La gesti�n de asuntos legales y contratos es importante en cualquier ubicaci�n para evitar problemas legales y garantizar un funcionamiento legal y �tico de la empresa.'),
-- Departamento de Recursos Humanos
('Recursos Humanos', 'La gesti�n del personal, incluyendo la contrataci�n y capacitaci�n, es importante en cualquier lugar para asegurar que se cuente con un equipo competente y comprometido.'),
-- Departamento de Marketing y Ventas
('Marketing y Ventas', 'Aunque la ubicaci�n rural puede tener un impacto en la estrategia de marketing, la promoci�n de las canchas y la atracci�n de clientes siguen siendo importantes para el �xito del negocio.'),
-- Departamento de Tecnolog�a de la Informaci�n (TI)
('Tecnolog�a de la Informaci�n (TI)', 'En la era moderna, la infraestructura tecnol�gica es valiosa para gestionar reservas en l�nea, comunicaci�n con los clientes y la eficiencia operativa.');


select * from empleados.departamento;


-- Agregar valores a la tabla "empleados.puestos" y relacionarlos con los departamentos

-- Puestos en el Departamento de Operaciones
INSERT INTO empleados.puestos (numeroPuesto, codigoDepartamento, nombre, descripcion)
VALUES (1, 1, 'Gerente de Operaciones', 'Encargado de la gesti�n diaria de las canchas, programaci�n de partidos y supervisi�n del mantenimiento.'),
(2, 1, 'Coordinador de Programaci�n de Canchas', 'Responsable de la programaci�n de partidos y horarios de las canchas.'),
(3, 1, 'Supervisor de Mantenimiento', 'Encargado de supervisar el mantenimiento de las instalaciones deportivas.'),
-- Puestos en el Departamento de Mantenimiento
(1, 2, 'Supervisor de Mantenimiento', 'Responsable de supervisar el mantenimiento de las canchas y las instalaciones.'),
(2, 2, 'T�cnico de Mantenimiento', 'Encargado del mantenimiento y reparaciones de las canchas.'),
-- Puestos en el Departamento de Servicio al Cliente
(1, 3, 'Gerente de Servicio al Cliente', 'Encargado de la gesti�n y atenci�n al cliente en la empresa.'),
(2, 3, 'Representante de Atenci�n al Cliente', 'Atiende a los clientes, gestiona reservas y resuelve problemas.'),
-- Puestos en el Departamento de Seguridad
(1, 4, 'Supervisor de Seguridad', 'Responsable de la seguridad de las instalaciones y de los jugadores y espectadores.'),
(2, 4, 'Guardia de Seguridad', 'Vigila las instalaciones y garantiza la seguridad en el lugar.'),
-- Puestos en el Departamento Legal
(1, 5, 'Abogado Corporativo', 'Gestiona asuntos legales y contratos de la empresa.'),
(2, 5, 'Asesor Legal Externo', 'Proporciona asesor�a legal externa si es necesario.'),
-- Puestos en el Departamento de Recursos Humanos
(1, 6, 'Director de Recursos Humanos', 'Encargado de la gesti�n de personal y recursos humanos.'),
(2, 6, 'Especialista en Selecci�n de Personal', 'Responsable de la contrataci�n y selecci�n de empleados.'),
-- Puestos en el Departamento de Marketing y Ventas
(1, 7, 'Gerente de Marketing', 'Dirige las estrategias de marketing y promoci�n de la empresa.'),
(2, 7, 'Gerente de Ventas', 'Supervisa las ventas y adquisici�n de clientes.');


select * from empleados.puestos

-- Departamento de Operaciones

INSERT INTO empleados.empleado (nombre, apellidos, correo, telefono, fecha_contrato, puesto, departamento)
VALUES ('Gabriel', 'Flores', 'gabriel.floresguzman@outlook.com', '33-11-08-14-67', '04/11/2023', 1, 1);

select * from empleados.empleado