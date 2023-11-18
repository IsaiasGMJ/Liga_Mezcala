create database LigaMezcala

use LigaMezcala;
go

create schema empleado;
go

create schema equipos;
go

create schema estadisticas;
go 

create schema reservas;
go

create schema juego;
go

create schema arbitros;
go

create table empleados.departamento(
	id_departamento int identity (1,1) not null,
	nombre_departamento varchar(max) not null,
	descripcion varchar(max),
	constraint pk_departamento primary key (id_departamento));

-- Crear la tabla "empleados.puestos"
-- Crear la tabla "empleados.puestos"
create table empleados.puestos (
    id_puesto int identity (1,1) not null,
	numeroPuesto int not null,
	codigoDepartamento int,
    nombre varchar(50) not null,
    descripcion varchar(max),
    constraint pk_puestos primary key (id_puesto),
    constraint fk_puestos_departamento 
	foreign key (codigoDepartamento) 
	references empleados.departamento(id_departamento)
);

-- Crear la tabla "empleados.empleado"
-- Crear la tabla "empleados.empleado" con la restricción de clave foránea
create table empleados.empleado (
    id_empleado int identity (1,1) not null,
    nombre varchar(20) not null,
    apellidos varchar(max) not null,
    correo varchar(50) unique,
    telefono varchar(20),
	fecha_contrato date not null,
	puesto int,
	departamento int,
    constraint pk_empleado primary key (id_empleado),
    constraint fk_empleado_departamento 
	foreign key (departamento) references empleados.departamento(id_departamento),
	constraint fk_empleado_puestos_departamento 
	foreign key (puesto) references empleados.puestos (id_puesto)
);

create table equipos.categorias (
    id_categoria int identity(1, 1) not null,
    nombre_categoria varchar(50) not null,
    descripcion_categoria varchar(max),
    constraint pk_categorias primary key (id_categoria)
);

create table equipos.equipos (
    id_equipo int identity(1, 1) not null,
    nombre_equipo varchar(50) not null,
    descripcion_equipo varchar(max),
    id_categoria int,
    constraint pk_equipos primary key (id_equipo),
    constraint fk_equipos_categoria foreign key (id_categoria) 
	references equipos.categorias(id_categoria)
);

create table equipos.directores_tecnicos (
    id_director_tecnico int identity(1, 1) not null,
    nombre_director_tecnico varchar(50) not null,
    apellidos_director_tecnico varchar(50) not null,
    equipo_id int,
    constraint pk_directores_tecnicos primary key (id_director_tecnico),
    constraint fk_directores_tecnicos_equipo foreign key (equipo_id) 
	references equipos.equipos(id_equipo)
);

create table equipos.jugadores (
    id_jugador int identity(1, 1) not null,
    nombre_jugador varchar(20) not null,
    apellidos_jugador varchar(30) not null,
    edad int,
    posicion varchar(30),
    id_equipo int,
    constraint pk_jugadores primary key (id_jugador),
    constraint fk_jugadores_equipo foreign key (id_equipo) 
	references equipos.equipos(id_equipo)
);

create table estadisticas.equipos (
    id_estadistica_equipo int identity(1, 1) not null,
    id_equipo int,
    fecha_estadistica date not null,
    goles int,
    asistencias int,
    tarjetas_amarillas int,
    tarjetas_rojas int,
    constraint pk_estadisticas_equipos primary key (id_estadistica_equipo),
    constraint fk_estadisticas_equipos_equipo foreign key (id_equipo) 
	references equipos.equipos(id_equipo)
);

create table estadisticas.jugadores (
    id_estadistica_jugador int identity(1, 1) not null,
    id_jugador int,
    fecha_estadistica date not null,
    goles int,
    asistencias int,
    tarjetas_amarillas int,
    tarjetas_rojas int,
    constraint pk_estadisticas_jugadores primary key (id_estadistica_jugador),
    constraint fk_estadisticas_jugadores_jugador foreign key (id_jugador) 
	references equipos.jugadores(id_jugador)
);

create table reservas.canchas (
    id_cancha int identity(1, 1) not null,
    nombre_cancha varchar(50) not null,
    descripcion_cancha varchar(max),
    constraint pk_canchas primary key (id_cancha)
);


-- Crear la tabla "reservas.horarios"
create table reservas.horarios (
    id_horario int identity(1, 1) not null,
    dia_semana varchar(15) not null, -- Por ejemplo: Lunes, Martes, Miércoles, etc.
    hora_inicio time not null,
    hora_fin time not null,
    id_cancha int,
    constraint pk_horarios primary key (id_horario),
    constraint fk_horarios_cancha foreign key (id_cancha) 
	references reservas.canchas(id_cancha)
);

-- Crear la tabla "reservas.reservas"
create table reservas.reservas (
    id_reserva int identity(1, 1) not null,
    id_equipo int, -- Identificador del equipo que realiza la reserva
    id_horario int,
    fecha_reserva date not null,
    estado varchar(20) not null, -- Puede ser 'Solicitado', 'Confirmado', 'Reclamado', etc.
    constraint pk_reservas primary key (id_reserva),
    constraint fk_reservas_equipo foreign key (id_equipo) 
	references equipos.equipos(id_equipo)
);

create table arbitros.arbitros (
    id_arbitro int identity(1, 1) not null,
    nombre_arbitro varchar(50) not null,
    apellido_arbitro varchar(50) not null,
    fecha_nacimiento date,
    nacionalidad varchar(50),
    constraint pk_arbitros primary key (id_arbitro)
);

-- Crear la tabla "juego.juegos"
create table juego.juegos (
    id_juego int identity(1, 1) not null,
    fecha_juego date not null,
    hora_juego time not null,
    lugar_juego varchar(50) not null,
    constraint pk_juegos primary key (id_juego)
);


-- Crear la tabla "juego.equipos_juego" para vincular equipos a un juego
create table juego.equipos_juego (
    id_equipo_juego int identity(1, 1) not null,
    id_juego int,
    id_equipo int,
    constraint pk_equipos_juego primary key (id_equipo_juego),
    constraint fk_equipos_juego_juego foreign key (id_juego) 
	references juego.juegos(id_juego),
    constraint fk_equipos_juego_equipo foreign key (id_equipo) 
	references equipos.equipos(id_equipo)
);


-- Crear la tabla "juego.arbitros_juego" para asignar árbitros a un juego
create table juego.arbitros_juego (
    id_arbitro_juego int identity(1, 1) not null,
    id_juego int,
    id_arbitro int,
    constraint pk_arbitros_juego primary key (id_arbitro_juego),
    constraint fk_arbitros_juego_juego foreign key (id_juego) 
	references juego.juegos(id_juego),
    constraint fk_arbitros_juego_arbitro foreign key (id_arbitro) 
	references arbitros.arbitros(id_arbitro)
);

-- Crear la tabla "juego.sucesos_juego" para registrar sucesos durante el juego
create table juego.sucesos_juego (
    id_suceso_juego int identity(1, 1) not null,
    id_juego int,
    minuto_ocurrencia int,
    descripcion_suceso varchar(max),
    constraint pk_sucesos_juego primary key (id_suceso_juego),
    constraint fk_sucesos_juego_juego 
	foreign key (id_juego) references juego.juegos(id_juego)
);

create table juego.cronologia_partido (
    id_cronologia int identity(1, 1) not null,
    id_juego int,
    minuto_ocurrencia int,
    tipo_suceso varchar(50) not null,  -- Puedes definir tipos de sucesos como goles, tarjetas, sustituciones, etc.
    descripcion_suceso varchar(max),
    constraint pk_cronologia_partido primary key (id_cronologia),
    constraint fk_cronologia_partido_juego 
	foreign key (id_juego) references juego.juegos(id_juego)
);