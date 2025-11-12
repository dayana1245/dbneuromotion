CREATE DATABASE diario_emocional;
USE diario_emocional;


CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_completo VARCHAR(100) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE,
  contrasena VARCHAR(255) NOT NULL,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE diarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  mood_level TINYINT,
  stability TINYINT,
  irritability TINYINT,
  motivation TINYINT,
  anxiety TINYINT,
  sleep_hours VARCHAR(50),
  eating VARCHAR(100),
  physical_activity VARCHAR(100),
  took_meds BOOLEAN,
  substances VARCHAR(100),
  sociability TINYINT,
  conflicts TEXT,
  emotional_support TINYINT,
  daily_feeling TEXT,
  concentration TINYINT,
  control_level TINYINT,
  negative_thoughts TEXT,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
