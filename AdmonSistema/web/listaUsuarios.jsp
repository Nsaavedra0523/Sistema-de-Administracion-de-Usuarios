<%-- 
    Document   : listaUsuarios
    Created on : 8/11/2025, 10:35:11 a. m.
    Author     : Nick
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #eef1f5;
                margin: 0;
                padding: 20px;
            }
            h2 {
                text-align: center;
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            th {
                background: #007bff;
                color: white;
                padding: 12px;
                text-align: left;
            }
            td {
                padding: 10px;
                border-bottom: 1px solid #ddd;
            }
            tr:hover {
                background: #f5f5f5;
            }
            a {
                text-decoration: none;
                color: #007bff;
                margin-right: 10px;
            }
            a:hover {
                text-decoration: underline;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
    </head>
    <body>
        <h2>Listado de Datos de usuarios</h2>
        <table>
            <tr>
                <th>Identificación</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>E-mail</th>
                <th>Usuario</th>
                <th>Contraseña</th>
                <th>Perfil</th>
                <th>Acción</th>
            </tr>
            <%
                UsuarioDAO udao = new UsuarioDAO();
                List<Usuario> lista = udao.listadoUsuarios();
                for (Usuario a : lista) {

            %>
            <tr>
                <td><%=a.getIdentificacion()%></td>
                <td><%=a.getNombre()%></td>
                <td><%=a.getApellido()%></td>
                <td><%=a.getEmail()%></td>
                <td><%=a.getUsuario()%></td>
                <td><%=a.getClave()%></td>
                <td><%=a.getIdperfil()%></td>
                <td>
                    <a href="EditarUsuario.jsp?id=<%=a.getIddato()%>">Editar</a>
                    <a href="eliminarUsuario?id=<%=a.getIddato()%>">Eliminar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>