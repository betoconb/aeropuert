<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AIZAC</title>
    <style>
        body {
            font-family: Helvetica, Arial, sans-serif;
            background-color: #8B0000; /* guinda */
            margin: 0;
            padding: 0;
        }

        #logo {
            width: 30%;
            height: 30%;
            margin: auto;
            display: block;
        }

        #boton {
            display: block;
            width: 300px;
            height: 50px;
            padding: 30px 25px;
            background: linear-gradient(#DCDCDC, #A9A9A9); /* gris claro degradado con gris oscuro */
            color: #800000; /* color guinda */
            text-align: center;
            border: none;
            border-radius: 4px;
            margin: 20px auto;
            cursor: pointer;/*CUANDO PASE EL CURSOS EL FONDO CAMBIA DE COLOR A UNO MÁS OSCURO*/
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s, transform 0.3s;
        }

        #boton:hover {
            background-color: #B22222; /* color guinda oscuro al pasar el cursor */
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<img src="logo.png" alt="Logo de la empresa" id="logo">
<a href="consulta.php">
    <label for="boton" id="boton">Menú</label>
</a>
<a href="compra.php">
    <label for="boton" id="boton">Compra</label>
</a>
</body>
</html>
<?php