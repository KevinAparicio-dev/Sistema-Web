<%-- 
    Document   : GestionEmpleados
    Created on : 13 oct 2023, 21:36:58
    Author     : Kevin Aparicio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Empleados</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Gestión de Empleados</h1>

        <!-- Botones de acción -->
        <button onclick="mostrarAgregar()">Agregar Empleado</button>
        <button onclick="mostrarListado()">Listado de Empleados</button>

        <!-- Formulario para agregar empleado -->
        <div id="formAgregar" style="display:none;">
            <h2>Agregar Empleado</h2>
        </div>

        <!-- Listado de empleados -->
        <div id="listadoEmpleados" style="display:none;">
            <h2>Listado de Empleados</h2>
            <!-- Aquí se mostraría la lista de empleados obtenida del servidor -->
        </div>

        <button onclick="regresar()">Regresar</button>

        <script>  
            function mostrarAgregar(){
                window.location.href = "/SistemaWeb?accion=RegistroEmpleados";
            }

            function mostrarListado() {
                document.getElementById("formAgregar").style.display = "none";
                document.getElementById("listadoEmpleados").style.display = "block";
                // Aquí se puede realizar una petición al servidor para obtener y mostrar la lista de empleados
            }

            function regresar() {
                window.history.back();
            }
        </script>
    </body>
</html>

