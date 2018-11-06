<%-- 
    Document   : Login
    Created on : 30-10-2018, 10:39:54
    Author     : Neo Jigoku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link REL="StyleSheet" HREF="css/stylelogin.css" TYPE="text/css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
                <script src="lib/jquery-1.9.0.min.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jquery.maskedinput.js" type="text/javascript"></script>
        <title>Fruna QueryPrice</title>
                    <script type="text/javascript">
            jQuery(function($){
     $("#rut").mask("99.999.999-*");
     $("#cel").mask("+56999999999");
});

        </script>      
    </head>
    <body>
        <h1>Inicio de sesión</h1>
        
        <form method="post" action="Validar.jsp" id="login">
                    <div class='wrapper'>
            <div class="titulo">Contraseña</div>
            <div class="titulo">Rut</div>
        </div>      
            <div class='wrapper'>
            <div class="formulario"><input type="password" name="txtPas" ></div>
            <div class="formulario"><input type="text" name="txtRut"></div>
            <div class="button"><input name="btnEnviar" type="submit" value="Ingresar"></div>
        </div>            
       </form>
        
                <center>
        <h1>Registrate gratis</h1>
         <div>
         <h1>QueryPrice</h1>
        </div>
        <div>

            <form method="POST" action="Insertar.jsp" id="register-form">   
            
          
            <p>Rut: <input name="txtRut"  placeholder="Introduzca su RUT" type="text" id="rut"></p>
            <p>Nombre: <input name="txtNombre" placeholder="Introduzca su nombre" type="text" ></p>
            <p>Apellidos: <input name="txtApellidos" placeholder="Introduzca su apellido" type="text" ></p> 
            <p>Sexo:  <input name="txtSexo" type="radio" value="Femenino" required>Femenino
            <input name="txtSexo" type="radio" value="Masculino">Masculino
            <input name="txtSexo" type="radio" value="Otro"> Sin especificar</p>
            <p>Contraseña: <input name="txtPass" id="txtPass" placeholder="Introduzca contraseña" type="password" pattern="[A-Za-z0-9]{5,40}" title="Letras y números. Tamaño mínimo: 5. Tamaño máximo: 40"required></p>
            <p>Repetir contraseña: <input name="txtPass2"  id="txtPass2"placeholder="Repetir Contraseña" type="password" required></p>
            <p>Correo electronico: <input name="txtCorreo" placeholder="Introduzca su correo" type="email" ></p>
            <p>Telefóno o Celular: <input name="txtTelefono"  placeholder="Introduzca su N° de teléfono" type="text" id="cel"></p>
            <p>Dirección: <input name="txtDireccion"  placeholder="Introduzca su dirección" type="text" ></p>
            <p><input name="btnEnviar" type="submit" value="Registrarse" onclick="validar_clave(e)"></p>
           
        </form>
        </div>
        
    </center>
 <script type="text/javascript">
    function validar_clave(e) {

      var caract_invalido = " ";
      var caract_longitud = 4;
      var cla1 = $('#register-form #txtPass').val();
      var cla2 = $('#register-form #txtPass2').val();
      if (cla1 == '' || cla2 == '') {
        alert('Debes introducir tu clave en los dos campos.');
        //document.registro
        e.preventDefault();
        return false;
      }
      if (cla1.length < caract_longitud) {
        alert('Tu clave debe constar de ' + caract_longitud + ' carácteres.');
        //document.registro
        e.preventDefault();
        return false;
      }
      if (cla1.indexOf(caract_invalido) > -1) {
        alert("Las claves no pueden contener espacios");
        //document.registro
        e.preventDefault();
        return false;
      } else {
        if (cla1 != cla2) {
          alert("Las claves introducidas no son iguales");
          //document.registro
          e.preventDefault();
          return false;
        } else {
          
          //$('#register-form').trigger('submit');
          return true;
        }
      }
    }
      $(function() {

      $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
      });
      $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
      });

      $('#register-form').submit(function(e) {
        validar_clave(e);
      });
    }
            );

  </script>
    </body>
</html>
