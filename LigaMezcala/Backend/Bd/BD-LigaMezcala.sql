create database LigaMezcala;
use LigaMezcala;
go

create schema empleados;
go

create schema jugadores;
go

create schema clientes;
go

create schema canchas;
go

create table empleados.empleado (
    id_empleado int identity(1, 1) not null,
    nombre varchar(50) not null,
    apellidos varchar(50) not null,
    correo_electronico varchar(100) unique,
    telefono varchar(20),
    puesto varchar(50) not null,
    fecha_contratacion date not null,
    id_turno int,
    id_departamento int,
    primary key (id_empleado),
    foreign key (id_turno) references empleados.turno(id_turno),
    foreign key (id_departamento) references empleados.departamento(id_departamento)
);

create table empleados.departamento (
    id_departamento int identity(1, 1) not null,
    nombre_departamento varchar(50) not null,
    descripcion varchar(100),
    primary key (id_departamento)
);

create table empleados.turno (
    id_turno int identity(1, 1) not null,
    nombre_turno varchar(50) not null,
    horario_inicio time,
    horario_finalizacion time,
    primary key (id_turno)
);

--Esquema Jugadores
create table jugadores.jugador (
    id_jugador int identity(1, 1) not null,
    nombre varchar(50) not null,
    apellidos varchar(50) not null,
    fecha_nacimiento date not null,
    direccion varchar(100),
    telefono varchar(20),
    correo_electronico varchar(100) unique,
    posicion varchar(50),
    equipo_actual varchar(50),
    primary key (id_jugador)
);

create table jugadores.equipo (
    id_equipo int identity(1, 1) not null,
    nombr_eequipo varchar(50),
    ciudad varchar(50),
    entrenador varchar(50),
    primary key (id_equipo)
);

create table jugadores.estadisticajugador (
    id_estadistica int identity(1, 1) not null,
    id_jugador int not null,
    temporada int not null,
    goles_anotados int not null,
    asistencias int,
    tarjetas_amarillas int,
    tarjetas_rojas int,
    primary key (id_estadistica),
    foreign key (id_jugador) references jugadores.jugador(id_jugador)
);

create table jugadores.contratojugador (
    id_contrato int identity(1, 1) not null,
    id_jugador int not null,
    tipo_contrato varchar(50),
    fecha_inicio date,
    fecha_finalizacion date,
    clausulas_especiales varchar(100),
    primary key (id_contrato),
    foreign key (id_jugador) references jugadores.jugador(id_jugador)
);

create table jugadores.posicionjugador (
    id_posicion int identity(1, 1) not null,
    nombre_posicion varchar(50) not null,
    descripcion varchar(100),
    primary key (id_posicion)
);

--Esquema Canchas
create table canchas.cancha (
    id_cancha int identity(1, 1) not null,
    nombre_cancha varchar(50),
    tipo_superficie varchar(50),
    capacidad_maxima int,
    estado_disponibilidad bit,
    tarifa_porhora decimal(10, 2),
    primary key (id_cancha)
);

create table canchas.reserva (
    id_reserva int identity(1, 1) not null,
    id_cancha int not null,
    id_cliente int not null,
    fechahora_reserva datetime,
    duracion int,
    estado_reserva varchar(50),
    primary key (id_reserva),
    foreign key (id_cancha) references canchas.cancha(id_cancha),
    foreign key (id_cliente) references clientes.cliente (id_cliente) 
);

create table canchas.partido (
    id_partido int identity(1, 1) not null,
    fecha_hora datetime,
    nombre_cancha varchar(50),
    fechahora_partido datetime,
    id_equipolocal int,
    id_equipovisitante int,
    resultado varchar(50),
    primary key (id_partido),
    foreign key (id_equipolocal) references jugadores.equipo(id_equipo),
    foreign key (id_equipovisitante) references jugadores.equipo(id_equipo)
);

--Esquema clientes

create table clientes.cliente (
    id_cliente int identity(1, 1) not null,
    nombre varchar(50) not null,
    apellidos varchar(50) not null,
    correo_electronico varchar(100) unique,
    telefono varchar(20),
    direccion varchar(100),
    primary key (id_cliente)
);

create table clientes.reserva (
    id_reserva int identity(1, 1) not null,
    id_cliente int not null,
    fechahora_reserva datetime,
    duracion int,
    estadoreserva varchar(50),
    primary key (id_reserva),
    foreign key (id_cliente) references clientes.cliente(id_cliente)
);
