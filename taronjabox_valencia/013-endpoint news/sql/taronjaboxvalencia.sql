
-- Base de datos para TaronjaBox
CREATE DATABASE taronjaboxvalencia CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE taronjaboxvalencia;

-- Tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    rol ENUM('admin', 'entrenador', 'cliente') NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de entrenadores
CREATE TABLE entrenadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    biografia TEXT,
    foto VARCHAR(255),
    especialidad VARCHAR(100),
    redes_sociales TEXT
);

-- Tabla de clases
CREATE TABLE clases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id_entrenador INT,
    horario VARCHAR(255),
    capacidad INT DEFAULT 0,
    FOREIGN KEY (id_entrenador) REFERENCES entrenadores(id) ON DELETE SET NULL
);

-- Tabla de reservas
CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_clase INT,
    fecha_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('confirmada', 'cancelada', 'pendiente') DEFAULT 'pendiente',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_clase) REFERENCES clases(id) ON DELETE CASCADE
);

-- Tabla de noticias y eventos
CREATE TABLE noticias_eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT NOT NULL,
    imagen VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_evento DATE
);

-- Tabla de galería
CREATE TABLE galeria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imagen VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de configuraciones
CREATE TABLE configuraciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clave VARCHAR(50) NOT NULL,
    valor TEXT NOT NULL
);
