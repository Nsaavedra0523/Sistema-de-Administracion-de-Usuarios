<%-- 
    Document   : index
    Created on : 6/11/2025, 11:04:28 a. m.
    Author     : Nick
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario - Laboratorio #5</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f6fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 60px auto;
            padding: 25px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input[type=text],
        input[type=email],
        input[type=password],
        input[type=number] {
            width: 95%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }
        .btn {
            width: 100%;
            margin-top: 15px;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .link {
            text-align: center;
            margin-top: 10px;
        }
        .error {
            color: red;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registro de Usuario</h2>

        <!-- Formulario para capturar datos -->
        <form action="controladorUsuario" method="post">
            <label for="cidentificacion">Identificación:</label>
            <input type="text" name="cidentificacion" id="cidentificacion" required>

            <label for="cnombre">Nombre:</label>
            <input type="text" name="cnombre" id="cnombre" required>

            <label for="capellido">Apellido:</label>
            <input type="text" name="capellido" id="capellido" required>

            <label for="cmail">Correo Electrónico:</label>
            <input type="email" name="cmail" id="cmail" required>

            <label for="cusuario">Usuario:</label>
            <input type="text" name="cusuario" id="cusuario" required>

            <label for="cclave">Contraseña:</label>
            <input type="password" name="cclave" id="cclave" required>

            <label for="cidperfil">ID Perfil:</label>
            <input type="number" name="cidperfil" id="cidperfil" required>

            <!-- Botón para enviar los datos -->
            <input type="submit" value="Registrar Usuario" class="btn">
        </form>

        <div class="link">
            <a href="listaUsuarios.jsp">Ver lista de usuarios</a>
        </div>

        <% if (request.getParameter("error") != null) { %>
            <p class="error">Error al registrar el usuario. Intente nuevamente.</p>
        <% } %>
    </div>
</body>
</html>
