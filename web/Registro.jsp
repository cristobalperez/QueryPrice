<%-- 
    Document   : Registro
    Created on : 30-10-2018, 11:56:52
    Author     : Neo Jigoku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1>Registrate gratis</h1>
         <div>
         <h1>QueryPrice</h1>
        </div>
        <div>
         <form method="POST" action="Insert.jsp">   
            
          
            <p>Rut: <input name="txtRut"  placeholder="introduzca la rut" type="text" required></p>
            <p>Correo electronico: <input name="txtCorreo" placeholder="introduzca el correo" type="email" required></p>
            <p>Contraseña: <input name="txtPass"  placeholder="introduzca contraseña " type="password" required></p>
            <p>Repetir contraseña: <input name="txtPass2"  placeholder="Repetir Contraseña " type="password" required></p>
            <p>Nombre: <input name="txtNombre" placeholder="introduzca el nombre" type="text" required></p>
            <p>Apellidos: <input name="txtApellidos" placeholder="introduzca Apellidos" type="text" required></p> 
            <p>Telefóno: <input name="txtTelefono"  placeholder="introduzca teleóno" type="text" required></p>
            <p>Empresa: <input name="txtEmpre" placeholder="introduzca nombre de empresa" type="text" required></p>
            <p><input name="btnEnviar" type="submit" value="Registrarse"></p>
           
        </form>
        </div>
    </center>
    </body>
</html>
