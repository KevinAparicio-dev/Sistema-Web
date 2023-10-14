<%-- 
    Document   : PanelAdministrador
    Created on : 7 oct 2023, 09:50:01
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Administrador</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        
        h1 {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin: 0;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        h3 {
            color: #333;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .menu {
            text-align: center;
            margin-top: 20px;
        }
        
        .menu a {
            display: inline-block;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            padding: 20px 30px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
            margin: 10px;
        }

        .menu a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Supermercado 1.0</h1>
    <%  String usuario = request.getParameter("tfUsuario"); %>
    <h2><strong>Bienvenido, <%= usuario %></strong></h2>
    <h3>Menú de opciones</h3>
    <div class="menu">
        <%@include file="MenuAdministrador.jsp" %>
    </div>
    <div>
        <%@include file="Footer.html" %>
    </div>
</body>
</html>
