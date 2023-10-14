<%-- 
    Document   : GestionProductos
    Created on : 12 oct 2023, 11:35:26
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Productos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Gestión de Productos</h1>

        <!-- Botones de acción -->
        <button onclick="mostrarAgregar()">Agregar Producto</button>
        <button onclick="mostrarListado()">Listado de Productos</button>

        <!-- Formulario para agregar producto -->
        <div id="formAgregar" style="display:none;">
            <h2>Agregar Producto</h2>
            <form method="post" action="/SistemaWeb/ServletPrincipal?accion=AgregarProducto">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="tfNombreProducto" required>
                </div>
                <div class="form-group">
                    <label for="precio">Precio:</label>
                    <input type="number" step="0.01" id="precio" name="tfPrecioProducto" required>
                </div>
                <!-- (otros campos como descripción, categoría, etc.) -->
                <input type="submit" name="btAgregar" value="AGREGAR">
            </form>
        </div>

        <!-- Listado de productos -->
        <div id="listadoProductos" style="display:none;">
            <h2>Listado de Productos</h2>
            <!-- Aquí se mostraría la lista de productos obtenida del servidor -->
        </div>

        <button onclick="regresar()">Regresar</button>

        <script>  
            function mostrarAgregar(){
                window.location.href = "/SistemaWeb?accion=RegistroProductos";
            }

            function mostrarListado() {
                // Aquí se puede realizar una petición al servidor para obtener y mostrar la lista de productos
            }

            function regresar() {
                window.history.back();
            }
        </script>
    </body>
</html>

