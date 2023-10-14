<%-- 
    Document   : RegistroEmpleados
    Created on : 12 oct 2023, 16:45:13
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Empleados</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Registro de Empleados</h1>
        <form method="post" action="/SistemaWeb/ServletPrincipal?accion=Login" id="formulario">
            <div class="form-group">
                <label for="nombres">Nombres:</label>
                <input type="text" id="nombre" name="tfNombresEmpleado" required>
            </div>
            <div class="form-group">
                <label for="apellidos">Apellidos:</label>
                <input type="text" id="nombre" name="tfApellidosEmpleado" required>
            </div>
            <div class="form-group">
                <label for="fechaNac">Fecha de Nacimiento:</label>
                <input type="date" id="fechaNac" name="tfFechaNac" required>
            </div>
            <div class="form-group">
                <label for="dui">DUI:</label>
                <input type="text" id="dui" name="tfDui" required>
            </div>
            <div class="form-group">
                <label for="telefono">Telefono:</label>
                <input type="number" id="telefono" name="tfTelefono" required>
            </div>
            <div class="form-group">
                <label for="isss">ISSS:</label>
                <input type="text" id="isss" name="tfIsss" required>
            </div>
            <div class="form-group">
                <label for="telefono">Correo:</label>
                <input type="email" id="correo" name="tfCorreo" required>
            </div>
            <div class="form-group">
                <input type="submit" name="btGuardar" value="GUARDAR">
                <input type="reset" name="btLimpiar" value="LIMPIAR">
            </div>
        </form>
        <button onclick="regresar()">Regresar</button>
        <script>  
        function regresar(){
            window.history.back();
        }
        </script>
    </body>
</html>
