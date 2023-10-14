<%-- 
    Document   : GestionClientes
    Created on : 13 oct 2023, 21:30:11
    Author     : Kevin Aparicio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestión de Clientes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h1>Gestión de Clientes</h1>

    <!-- Botones de acción -->
    <button onclick="mostrarAgregar()">Agregar Cliente</button>
    <button onclick="mostrarListado()">Listado de Clientes</button>

    <!-- Formulario para agregar cliente -->
    <div id="formAgregar" style="display:none;">
        <h2>Agregar Cliente</h2>
        <form method="post" action="/SistemaWeb/ServletPrincipal?accion=AgregarCliente">
            <!-- (campos del formulario como en el ejemplo anterior) -->
            <input type="submit" name="btAgregar" value="AGREGAR">
        </form>
    </div>

    <!-- Listado de clientes -->
    <div id="listadoClientes" style="display:none;">
        <h2>Listado de Clientes</h2>
        <!-- Aquí se mostraría la lista de clientes obtenida del servidor -->
    </div>

    <button onclick="regresar()">Regresar</button>

    <script>  
        function mostrarAgregar(){
            window.location.href = "/SistemaWeb?accion=Clientes";
        }

        function mostrarListado(){
            // Aquí se puede realizar una petición al servidor para obtener y mostrar la lista de clientes
        }

        function regresar(){
            window.history.back();
        }
    </script>
</body>
</html>

