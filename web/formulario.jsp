<%-- 
    Document   : altas
    Created on : 1 feb. 2022, 10:59:40
    Author     : alumno
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Altas</title>
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body style="background: url(./images/fondo1.jpg);">
        
        <%
          if (!session.getAttribute("usuario").equals("admin")) {
            session.setAttribute("erroradmin", "Debe ser administrador del sitio para acceder a esta página.");
            response.sendRedirect("perfil.jsp");
          }


        %>
       
        <div class="card border-dark mb-3 position-absolute top-50 start-50 translate-middle" style="max-width: 50rem;">
            <div class="card-header" style="background-color: #323539; color: white">Introduzca los datos de la nueva película</div>
            <div class="card-body text-dark">
                <div class="text-center">
            <form method="get" action="altas.jsp">
                <div class="mb-3">
                    <label for="id" class="form-label">Id</label>
                    <input type="text" class="form-control" name="id" aria-describedby="id">
                </div>
                <div class="mb-3">
                    <label for="titulo" class="form-label">Titulo</label>
                    <input type="text" class="form-control" name="titulo" aria-describedby="titulo">
                </div>
                <div class="mb-3">
                    <label for="genero" class="form-label">Genero</label>
                    <input type="text" class="form-control" name="genero" aria-describedby="genero">
                </div>
                <div class="mb-3">
                    <label for="puntuacion" class="form-label">Puntuacion</label>
                    <input type="text" class="form-control" name="puntuacion" aria-describedby="puntuacion">
                </div>
                <button type="submit" class="btn btn-primary">Aceptar</button>
            </form>
            <br><a href="index.jsp"> Volver a la página principal</a>
        </div>
            </div>
        </div>
        
    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>


