<%-- 
    Document   : EditarUsuario
    Created on : 8/11/2025, 10:34:56 a. m.
    Author     : Nick
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #f0f2f5;
                margin: 0;
                padding: 20px;
            }
            #apDiv1 {
                width: 700px;
                margin: auto;
                background: #fff;
                padding: 25px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 15px;
            }
            table td {
                padding: 10px;
                border: 1px solid #ddd;
            }
            input[type=text], input[type=password] {
                width: 95%;
                padding: 8px;
                border-radius: 6px;
                border: 1px solid #ccc;
            }
            input[type=submit] {
                background: #007bff;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 16px;
            }
            input[type=submit]:hover {
                background: #0056b3;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            UsuarioDAO udao = new UsuarioDAO();
            int id = Integer.parseInt(request.getParameter("id"));
            Usuario a = udao.listarDatos_Id(id);
        %>

        <div id="apDiv1">
            <form id="form1" name="form1" method="post" action="editarUsuario">
                <table width="665" border="1">
                    <tr>
                        <td>Identificación</td>
                        <td><label for="cid"></label>
                            <input type="hidden" name="cidd" value="<%=id%>"/>
                            <input type="text" name="cid" id="cid" value="<%=a.getIdentificacion()%>"/></td>
                    </tr>
                    <tr>
                        <td>Nombres</td>
                        <td><label for="cnombre"></label>
                            <input name="cnombre" type="text" id="cnombre" size="40" value="<%=a.getNombre()%>"
                                   /></td>
                    <tr>
                        <td>Apellidos</td>
                        <td><label for="capellido"></label>
                            <input name="capellido" type="text" id="capellido" size="40"
                                   value="<%=a.getApellido()%>"/></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td><label for="cmail"></label>
                            <input name="cmail" type="text" id="cmail" size="60" value="<%=a.getEmail()%>"/></td>
                    </tr>
                    <tr>
                        <td>Usuario</td>
                        <td><label for="cusuario"></label>
                            <input type="text" name="cusuario" id="cusuario" value="<%=a.getUsuario()%>"/></td>
                    </tr>
                    <tr>
                        <td>Clave</td>
                        <td><label for="cclave"></label>
                            <input type="password" name="cclave" id="cclave" value="<%=a.getClave()%>"/></td>
                    </tr>

                    <tr>
                        <td>Perfil</td>
                        <td><label for="cperfil"></label>
                            <input type="text" name="cperfil" id="cperfil" value="<%=a.getIdperfil()%>"/></td>
                    </tr>
                </table>
                <p>
                    <input type="submit" name="button" id="button" value="Actualizar" />
                </p>
            </form>
        </div>
    </body>
</html>