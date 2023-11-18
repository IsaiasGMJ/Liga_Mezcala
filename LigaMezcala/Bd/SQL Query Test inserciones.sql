
-- Departamento de Operaciones
INSERT INTO empleados.departamento (nombre_departamento, descripcion)
VALUES ('Operaciones', 'Esencial para gestionar las canchas, programar partidos y supervisar el mantenimiento. Este departamento es importante en cualquier ubicación, ya que se encarga de la gestión diaria de las instalaciones.'),
-- Departamento de Mantenimiento
('Mantenimiento', 'Asegurar que las canchas estén en buen estado es crucial para la satisfacción de los clientes y la seguridad de los jugadores. Esto es importante en cualquier lugar, incluyendo zonas rurales.'),
-- Departamento de Servicio al Cliente
('Servicio al Cliente', 'La atención al cliente es fundamental para mantener a los clientes satisfechos y fomentar la fidelidad, independientemente de la ubicación de la empresa.'),
-- Departamento de Seguridad
('Seguridad', 'La seguridad es importante en cualquier ubicación, por lo que contar con personal o medidas de seguridad para proteger a los jugadores y espectadores es esencial.'),
-- Departamento Legal
('Legal', 'La gestión de asuntos legales y contratos es importante en cualquier ubicación para evitar problemas legales y garantizar un funcionamiento legal y ético de la empresa.'),
-- Departamento de Recursos Humanos
('Recursos Humanos', 'La gestión del personal, incluyendo la contratación y capacitación, es importante en cualquier lugar para asegurar que se cuente con un equipo competente y comprometido.'),
-- Departamento de Marketing y Ventas
('Marketing y Ventas', 'Aunque la ubicación rural puede tener un impacto en la estrategia de marketing, la promoción de las canchas y la atracción de clientes siguen siendo importantes para el éxito del negocio.'),
-- Departamento de Tecnología de la Información (TI)
('Tecnología de la Información (TI)', 'En la era moderna, la infraestructura tecnológica es valiosa para gestionar reservas en línea, comunicación con los clientes y la eficiencia operativa.');


select * from empleados.departamento;


-- Agregar valores a la tabla "empleados.puestos" y relacionarlos con los departamentos

-- Puestos en el Departamento de Operaciones
INSERT INTO empleados.puestos (numeroPuesto, codigoDepartamento, nombre, descripcion)
VALUES (1, 1, 'Gerente de Operaciones', 'Encargado de la gestión diaria de las canchas, programación de partidos y supervisión del mantenimiento.'),
(2, 1, 'Coordinador de Programación de Canchas', 'Responsable de la programación de partidos y horarios de las canchas.'),
(3, 1, 'Supervisor de Mantenimiento', 'Encargado de supervisar el mantenimiento de las instalaciones deportivas.'),
-- Puestos en el Departamento de Mantenimiento
(1, 2, 'Supervisor de Mantenimiento', 'Responsable de supervisar el mantenimiento de las canchas y las instalaciones.'),
(2, 2, 'Técnico de Mantenimiento', 'Encargado del mantenimiento y reparaciones de las canchas.'),
-- Puestos en el Departamento de Servicio al Cliente
(1, 3, 'Gerente de Servicio al Cliente', 'Encargado de la gestión y atención al cliente en la empresa.'),
(2, 3, 'Representante de Atención al Cliente', 'Atiende a los clientes, gestiona reservas y resuelve problemas.'),
-- Puestos en el Departamento de Seguridad
(1, 4, 'Supervisor de Seguridad', 'Responsable de la seguridad de las instalaciones y de los jugadores y espectadores.'),
(2, 4, 'Guardia de Seguridad', 'Vigila las instalaciones y garantiza la seguridad en el lugar.'),
-- Puestos en el Departamento Legal
(1, 5, 'Abogado Corporativo', 'Gestiona asuntos legales y contratos de la empresa.'),
(2, 5, 'Asesor Legal Externo', 'Proporciona asesoría legal externa si es necesario.'),
-- Puestos en el Departamento de Recursos Humanos
(1, 6, 'Director de Recursos Humanos', 'Encargado de la gestión de personal y recursos humanos.'),
(2, 6, 'Especialista en Selección de Personal', 'Responsable de la contratación y selección de empleados.'),
-- Puestos en el Departamento de Marketing y Ventas
(1, 7, 'Gerente de Marketing', 'Dirige las estrategias de marketing y promoción de la empresa.'),
(2, 7, 'Gerente de Ventas', 'Supervisa las ventas y adquisición de clientes.');


select * from empleados.puestos

-- Departamento de Operaciones

INSERT INTO empleados.empleado (nombre, apellidos, correo, telefono, fecha_contrato, puesto, departamento)
VALUES ('Gabriel', 'Flores', 'gabriel.floresguzman@outlook.com', '33-11-08-14-67', '04/11/2023', 1, 1);

select * from empleados.empleado