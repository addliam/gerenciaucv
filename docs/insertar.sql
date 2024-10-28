INSERT INTO `CategoriaGasto` (`nombre`) VALUES
('Alimentación'),
('Transporte'),
('Educación'),
('Entretenimiento'),
('Salud y cuidado personal'),
('Vivienda y servicios'),
('Tecnología y suscripciones'),
('Ropa y accesorios'),
('Ahorro e inversión'),
('Otros');

INSERT INTO `Usuario` (`email`, `contrasena`) VALUES
('user1@ejemplo.com', 'contra1234'),
('user2@ejemplo.com', 'contra1234');

INSERT INTO `Persona` (`usuario_id`, `nombre`, `apellidos`, `fecha_nacimiento`, `ocupacion`, `ingresos`, `fecha_registro`) VALUES
(1, 'Juan', 'Pérez', '2001-05-10', 'Estudiante Universitario', 1500.00, '2024-10-28'),
(2, 'María', 'Gómez', '2002-09-15', 'Estudiante Universitario', 1200.00, '2024-10-28');

INSERT INTO `Gasto` (`categoriagasto_id`, `usuario_id`, `nombre`, `monto`, `fecha`) VALUES
(1, 1, 'Almuerzo en cafetería', 7.50, '2024-10-05'),
(1, 1, 'Desayuno en Starbucks', 5.00, '2024-10-06'),
(1, 1, 'Compra en supermercado', 20.00, '2024-10-08'),
(1, 1, 'Cena en restaurante', 15.00, '2024-10-12'),
(2, 1, 'Transporte a la universidad', 10.00, '2024-10-07'),
(2, 1, 'Taxi para evento', 12.00, '2024-10-11'),
(2, 1, 'Recarga de tarjeta de transporte', 5.00, '2024-10-15'),
(3, 1, 'Libros de texto', 50.00, '2024-10-09'),
(3, 1, 'Cuadernos y material de oficina', 10.00, '2024-10-13'),
(4, 1, 'Cine con amigos', 8.00, '2024-10-10'),
(4, 1, 'Concierto', 30.00, '2024-10-16'),
(4, 1, 'Alquiler de videojuegos', 5.00, '2024-10-18'),
(5, 2, 'Suscripción gimnasio', 20.00, '2024-10-14'),
(5, 2, 'Consulta médica', 50.00, '2024-10-17'),
(5, 2, 'Compra de vitaminas', 15.00, '2024-10-20'),
(6, 2, 'Pago de renta', 300.00, '2024-10-18'),
(6, 2, 'Servicio de agua', 30.00, '2024-10-22'),
(6, 2, 'Servicio de electricidad', 40.00, '2024-10-24'),
(7, 1, 'Compra de accesorios de computadora', 70.00, '2024-10-19'),
(7, 1, 'Renovación de antivirus', 20.00, '2024-10-23'),
(7, 1, 'Suscripción Netflix', 10.00, '2024-10-25'),
(8, 1, 'Compra de ropa', 45.00, '2024-10-14'),
(8, 1, 'Zapatos deportivos', 60.00, '2024-10-20'),
(8, 1, 'Accesorios para el invierno', 30.00, '2024-10-21'),
(9, 2, 'Ahorro mensual', 100.00, '2024-10-01'),
(9, 2, 'Inversión en criptomonedas', 50.00, '2024-10-15'),
(9, 2, 'Depósito a cuenta de ahorro', 75.00, '2024-10-28'),
(10, 1, 'Regalo de cumpleaños', 20.00, '2024-10-05'),
(10, 1, 'Donación a caridad', 15.00, '2024-10-12'),
(10, 1, 'Gastos varios en evento familiar', 40.00, '2024-10-17'),
(1, 2, 'Cena rápida', 10.00, '2024-10-06'),
(1, 2, 'Café antes de clases', 3.00, '2024-10-08'),
(4, 2, 'Suscripción Spotify', 5.00, '2024-10-10'),
(5, 1, 'Tratamiento dental', 100.00, '2024-10-26'),
(6, 1, 'Servicio de internet', 25.00, '2024-10-19'),
(6, 1, 'Gas', 15.00, '2024-10-25');

INSERT INTO `Meta` (`usuario_id`, `nombre`, `monto_maximo`, `categoriagasto_id`, `plazo`) VALUES
(1, 'Limitar gastos en entretenimiento', 50.00, 4, '2024-12-31'),
(2, 'Ahorro para vivienda', 1000.00, 9, '2025-06-30');
