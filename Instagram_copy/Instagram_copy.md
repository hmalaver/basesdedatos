# Clon Instagram

## Listado de entidades

### posts  **(ED)**

- post_id
- post_date
- description
- photo
- user_id  **(FK)**

### user   **(ED)**

- user_id  **(PK)**
- user_date
- user_name
- email  **(UQ)**
- password
- phone  **(UQ)**
- biography
- web
- avatar
- birthday
- gender
- country  **(FK)**

### comments  **(ED | EP)**

- comment_id
- comment_date
- comment
- post_id  **(FK)**
- user_id  **(FK)**

### hearts  **(ED | EP)**

- herat_id  **(PK)**
- heart_date
- post_id  **(FK)**
- user_id  **(FK)**

### follows

- follow_id  **(PK)**
- follow_date
- follow_user  **(FK)** 
- following_user  **(FK)**


### countries  **(EC)**

- country_id  **(PK)**
- country_name

## Relaciones

1. Un **post** tiene **comments**  (_1 - M_)
1. Un **post** tiene **hearts**   (_1 - M_)
1. Un **user** publica **posts**  (_1 - M_)
1. Un **user** escribe **comments**  (_1 - M_)
1. Un **user** otorga **hearts**  (_1 - 1_)
1. Un **user** tiene **follows**  (_1 - M_)
1. Un **user** sigue **follows**  (_1 -M_)
1. Un **user** pertenece **countries**  (_1 - M_)


## Reglas de negocio

### posts

1. Crear un post.
1. Leer todos los posts.
1. Leer un post en particular.
1. Leer los posts de un usuario.
1. Actualizar la descripcion de un post.
1. Eliminar un post

### users

1. Crear un user.
1. Leer todos los users.
1. Leer un user en particular.
1. Validar un usuario.
1. Actualizar los datos del usuario.
1. Actualizar password de un usuario.
1. Eliminar usuario

### comments

1. Crear un comment en un post.
1. Leer todos los comments de un post.
1. Leer un comment de un post.
1. Contar el numero de comments de un post.
1. Eliminar comment de un post

### hearts

1. Crear heart de user en un post.
1. Leer el número de hearts de un post.
1. Eliminar heart de user en un post.

### follows

1. Crerar follow de un user.
1. Contar el número de followers de un user.
1. Contar el número de followings de un user.
1. Eliminar follow de un user.

### countries

1. Crear country.
1. Leer todos los countries.
1. Leer un country.
1. Actualizar un country.
1. Eliminar un country.

