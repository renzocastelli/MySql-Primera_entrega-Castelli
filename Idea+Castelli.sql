-- Crear la base de datos
DROP SCHEMA IF EXISTS hardware_store;
CREATE SCHEMA hardware_store;

-- Usar la base de datos
USE hardware_store;

-- Crear la tabla de Categorías de Hardware
CREATE TABLE IF NOT EXISTS CategoriasHardware (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador de la Categoría',
    NombreCategoria VARCHAR(255) COMMENT 'Nombre de la Categoría'
);

-- Insertar datos de ejemplo en la tabla de Categorías de Hardware
INSERT INTO CategoriasHardware (CategoriaID, NombreCategoria) VALUES
(1, 'Procesadores'),
(2, 'Tarjetas gráficas'),
(3, 'Discos duros'),
(4, 'Memoria RAM'),
(5, 'Placas base');

-- Crear la tabla de Productos de Hardware
CREATE TABLE IF NOT EXISTS ProductosHardware (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador del Producto',
    NombreProducto VARCHAR(255) COMMENT 'Nombre del Producto',
    Precio DECIMAL(10, 2) COMMENT 'Precio del Producto',
    CategoriaID INT COMMENT 'Identificador de la Categoría a la que pertenece el Producto',
    FOREIGN KEY (CategoriaID) REFERENCES CategoriasHardware(CategoriaID)
);

-- Insertar datos de ejemplo en la tabla de Productos de Hardware
INSERT INTO ProductosHardware (ProductoID, NombreProducto, Precio, CategoriaID) VALUES
(1, 'Intel Core i7', 299.99, 1),
(2, 'NVIDIA GeForce RTX 3080', 699.99, 2),
(3, 'Samsung 1TB SSD', 149.99, 3),
(4, 'Corsair Vengeance 16GB', 79.99, 4),
(5, 'ASUS ROG Strix X570', 199.99, 5);
