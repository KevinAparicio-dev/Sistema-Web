<%-- 
    Document   : GestionEmpleados
    Created on : 13 oct 2023, 21:36:58
    Author     : Kevin Aparicio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Empleados</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/SistemaWeb?accion=RegistrarEmpleado">Agregar empleado</a><br><br>

        <!-- Listado de empleados -->
            <h2>Listado de Empleados</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Empleado</th>
                    <th>DUI_Empleado</th>
                    <th>ISSS_Empleado</th>
                    <th>NombresEmpleado</th>
                    <th>ApellidosEmpleado</th>
                    <th>FechaNacEmpleado</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>ID_Cargo</th>
                    <th>ID_Direccion</th>
                     <!-- AÑADIR COLUMNA DE ACCIONES-->
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Empleado}" /></td>
                        <td><c:out value="${item.DUI_Empleado}" /></td>
                        <td><c:out value="${item.ISSS_Empleado}" /></td>                        
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>
                        <td><c:out value="${item.fechaNacEmpleado}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>                        
                        <td><c:out value="${item.ID_Cargo}" /></td>
                        <td><c:out value="${item.ID_Direccion}" /></td>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="DUI_Empleado" value="${item.DUI_Empleado}" />
                                <input type="hidden" name="ISSS_Empleado" value="${item.ISSS_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNacEmpleado" value="${item.fechaNacEmpleado}" />
                                <input type="hidden" name="telefonoEmpleado" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="ID_Cargo" value="${item.ID_Cargo}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="DUI_Empleado" value="${item.DUI_Empleado}" />
                                <input type="hidden" name="ISSS_Empleado" value="${item.ISSS_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNacEmpleado" value="${item.fechaNacEmpleado}" />
                                <input type="hidden" name="telefonoEmpleado" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="ID_Cargo" value="${item.ID_Cargo}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>

                        </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>

