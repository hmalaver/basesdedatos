# Ventas

## Listado de entidades

### clientes  **(Entidad Datos)**

- cliente_id  **(PK)**
- nombre
- apellidos
- telefono **(UQ)**
- email **(UQ)**
- direccion
- distrito 
- producto_id **(FK)**

### productos  **(Entidad Datos | Entidad Catalogo)**

- producto_id **(PK)**
- nombre
- descripcion
- talla
- precio
- cantidad / stock
- marca_id **(FK)**

### ventas

- venta_id **(PK)**
- cliente_id  **(FK)**
- fecha
- monto

### marcas  **(Entidad Catalogo)**

- marca_id **(PK)**
- nombre  
- descripcion
- proveedor_id  **(FK)**


### proveedores  **(Entidad De Datos)**

- proveedor_id **(PK)**
- nombre
- contacto


## Relaciones

1. Un **cliente** compra  **productos** (_1 - M_).
1. Un **cliente** genera **ventas** (_1 - M_).
1. Un **producto** pertenece **marca** (_1 - 1_).
1. Una **marca** tiene un **proveedor**  (_1 - 1_).


## Reglas de negocio

### clientes

1. Crear un cliente
1. Leer todos los clientes
1. Leer un cliente en particular
1. Actualizar un cliente
1. Eliminar un cliente


### productos

1. Crear un producto
1. Leer todos los productos
1. Leer un producto en particular
1. Actualizar un producto
1. Eliminar un producto
1. Cada que haya una venta restar a la cantidad de producto disponibles, el número de articulos que se vendieron


### ventas

1. Crear una venta
1. Leer todas las ventas
1. Leer una venta en particular
1. Leer todas las ventas de un cliente
1. Leer todas las ventas de un producto
1. Actualizar una venta
1. Eliminar una venta


### articulos_x_venta

1. Crear un articulo
1. Leer todos los articulos
1. Leer un articulo en particular
1. Leer todos los articulos de una venta
1. Leer todos los articulos de un producto
1. Leer todos los articulos de un cliente
1. Actualizar un articulo
1. Eliminar un articulo


### paises

1. Crear un pais
1. Leer todos los paises
1. Leer un pais en particular
1. Actualizar un pais
1. Eliminar un pais
