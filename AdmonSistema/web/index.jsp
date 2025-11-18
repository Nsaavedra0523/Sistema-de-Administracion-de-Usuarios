<%-- 
    Document   : indes
    Created on : 8/11/2025, 10:49:21 a. m.
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <style>
        body {
            background: #f3f6fa;
            font-family: Arial;
            padding-top: 60px;
        }
        table {
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        td {
            padding: 10px;
        }
        input[type=text],
        input[type=password] {
            width: 95%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type=submit] {
            padding: 8px 15px;
            background: #28a745;
            color: white;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background: #1f7e33;
        }
    </style>
</head>
<form id="form1" name="form1" method="post" action="ctrolValidar">
    <table width="421" height="102" border="1">
        <tr>
            <td width="157">Usuario</td>
            <td width="248"><label for="cusuario"></label>
                <input type="text" name="cusuario" id="cusuario" /></td>
        </tr>
        <tr>
            <td>Contraseña</td>
            <td><label for="cclave"></label>
                <input type="password" name="cclave" id="cclave" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input name="accion" value="Ingresar" type="submit" id="button" /></td>
        </tr>
    </table>
</form>