<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <style>
        /* Estilos generales para la página */
        body {
            background-color: #d3d3d3; /* Color gris para el fondo de la página */
            font-family: Arial, sans-serif;
        }

        /* Estilos generales para la tabla */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white; /* Color de fondo blanco para las filas */
        }

        /* Estilos para los títulos de la tabla */
        th {
            background-color: #800020; /* Color guinda */
            color: white;
            border-radius: 3px;
            padding: 5px;
        }

        /* Estilos para las filas de la tabla */
        td {
            border-bottom: 1px solid #d3d3d3; /* Color gris claro */
            padding: 5px;
            color: #333333; /* Color gris muy oscuro */
        }

        /* Estilos para el efecto hover en las filas */
        tr:hover {
            background-color: #f0f0f0; /* Color gris claro para el sombreado */
        }
    </style>
</head>
<body>

<?php
include ('conexion.php');
$enlace_db=connect();

$consulta="SELECT
                V.NUMERO_VUELO, 
                A.NOMBRE, 
                V.PRECIO, 
                V.FECHA_LLEGADA, 
                V.FECHA_SALIDA, 
                V.DESTINO, 
                V.ORIGEN, 
                E.NOMBRE, 
                V.DESTINO, 
                R.NOMBRE
                FROM vuelo V INNER JOIN aerolinea A ON V.ID_AEROLINEA=A.ID_AEROLINEA
                             INNER JOIN aeropuerto E ON V.ORIGEN=E.ID_AEROPUERTO
                             INNER JOIN aeropuerto R ON V.DESTINO=R.ID_AEROPUERTO"; //aquí vamos a hacer las consultas de la base de datos. Ttrae info de la
$resultado_sql=mysqli_query($enlace_db, $consulta);//trae información de la base de datos

while($datos=mysqli_fetch_array($resultado_sql, MYSQLI_ASSOC))
{
    echo json_encode($datos);
}

?>
</body>
</html>
