<%-- 
    Document   : mensaje
    Created on : 6/11/2025, 11:04:32 a. m.
    Author     : Nick
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado de Registro</title>
        <style>
            body {
                font-family: Arial;
                background: #f0f2f5;
                text-align: center;
                padding-top: 60px;
            }
            .msg-box {
                background: #fff;
                border-radius: 12px;
                padding: 25px;
                display: inline-block;
                box-shadow: 0 0 12px rgba(0,0,0,0.1);
            }
            .btn {
                background: #007BFF;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 6px;
                text-decoration: none;
                margin: 5px;
                display: inline-block;
            }
            .btn:hover {
                background: #0056b3;
            }
        </style>

    </head>
    <body>
        <div class="msg-box">
            <h2>El Usuario se ha registrado con exito</h2>
            <a href="index.jsp" class="btn">Registrar otro usuario</a>
            <a href="listaUsuarios.jsp" class="btn">Ver lista</a>
        </div>
    </body>
</html>
