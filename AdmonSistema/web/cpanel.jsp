<%-- 
    Document   : cpanel
    Created on : 8/11/2025, 10:57:54 a. m.
    Author     : Nick
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import= "modelo.Conexion" %>
<%
//recuperar la sesión
    HttpSession sesion_cli = request.getSession(true);
    String nUsuario = (String) sesion_cli.getAttribute("nUsuario");
    Connection con = null;
    Statement sentencia = null;
    ResultSet resultado = null;
    String nombre = null;
    String apellido = null;
    String usu = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #e9edf3;
                margin: 0;
                padding: 20px;
            }
            #apDiv5 table, #apDiv6 table {
                border-collapse: collapse;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            #apDiv5 table th,
            #apDiv6 table td {
                padding: 12px;
                border-bottom: 1px solid #ddd;
            }
            #apDiv5 a {
                text-decoration: none;
                color: #007bff;
            }
            #apDiv6 a {
                text-decoration: none;
                color: #dc3545;
                font-weight: bold;
            }
            iframe {
                border-radius: 12px;
                margin-top: 20px;
                box-shadow: 0 0 12px rgba(0,0,0,0.1);
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Login</title>
    </head>
    <body>
        <%
            try {
                Conexion cn = new Conexion();
                con = cn.crearConexion();
                sentencia = con.createStatement();
                resultado = sentencia.executeQuery("SELECT * from datos WHERE usuario ='" + nUsuario + "' ");
                while (resultado.next()) {
                    nombre = resultado.getString("nombre");
                    apellido = resultado.getString("apellido");
                    usu = resultado.getString("usuario");
                }
            } catch (Exception e) {
            }
            con.close();
        %>
        <%
            if (usu.equals(nUsuario)) {
                Conexion cn = new Conexion();
                con = cn.crearConexion();
                sentencia = con.createStatement();
                resultado = sentencia.executeQuery(
                        "SELECT actividades.nom_actividad AS actividad, actividades.id_actividad AS idAct, "
                        + "actividades.enlace AS enlace "
                        + "FROM datos, actividades, gestactividad, perfiles "
                        + "WHERE "
                        + "gestactividad.id_actividad = actividades.id_actividad AND "
                        + "gestactividad.id_perfil = perfiles.id_perfil AND "
                        + "datos.id_perfil = perfiles.id_perfil AND "
                        + "datos.usuario ='" + nUsuario + "' "
                );
        %>
        <div id="apDiv5">
            <table width="244" border="1">
                <tr>
                    <th><strong>Menú</strong></th>
                </tr>
                <%
                    while (resultado.next()) {
                %>
                <tr>
                    <td><a href="<%=resultado.getString("enlace")%>?id=<%=resultado.getInt("idAct")%>"
                           target="marco"> <%=resultado.getString("actividad")%></a></td>
                </tr>
                <%}%>
                <%}%>
            </table>
        </div>
        <div id="apDiv6">&nbsp;
            <table width="657" border="1">
                <tr>
                    <td width="473"><%=nombre%>&nbsp;<%=apellido%></td>
                    <td width="168"><a href="cerrarSesion">Cerrar sesión</a></td>
                </tr>
            </table>
        </div>
        <div id="apDiv7">
            <iframe width="869" height="493" name="marco" src="front.jsp" frameborder="0"></iframe>
        </div>
    </body>
</html>