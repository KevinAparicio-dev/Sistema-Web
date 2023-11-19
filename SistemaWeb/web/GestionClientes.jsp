<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestión de Clientes</title>
</head>
<body>
    <h3>Conexion: ${mensaje_conexion}</h3><br>
    <h1>Gestión de Clientes</h1>

    <!-- Agrega el código para mostrar la lista de clientes -->
    <%-- Agrega esta línea para imprimir el tamaño de la listaClientes --%>
    <p>Tamaño de la listaClientes: ${fn:length(listaClientes)}</p>

    <table border="1">
    <thead>
        <tr>
            <th>ID Cliente</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>DUI</th>
            <th>Fecha Nacimiento</th>
            <th>Email</th>
            <th>ID Dirección</th>
            <th>Dirección Completa</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listaClientes}" var="item">
            <tr>
                <td><c:out value="${item.ID_Cliente}" /></td>
                <td><c:out value="${item.nombresCliente}" /></td>
                <td><c:out value="${item.apellidosCliente}" /></td>
                <td><c:out value="${item.DUI_Cliente}" /></td>
                <td><c:out value="${item.fechaNacCliente}" /></td>
                <td><c:out value="${item.correo}" /></td>
                <td><c:out value="${item.ID_Direccion}" /></td>
                <td><c:out value="${item.direccionCompleta}" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
