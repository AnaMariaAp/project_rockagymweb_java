<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La Roka GYM - Gestor</title>
        <link href="src-rg/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="src-rg/css/style.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
            body {
              padding-top: 40px;
              padding-bottom: 40px;
              background-color: #eee;
            }
            .form-signin {
              max-width: 330px;
              padding: 15px;
              margin: 0 auto;
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
              margin-bottom: 10px;
            }
            .form-signin .checkbox {
              font-weight: normal;
            }
            .form-signin .form-control {
              position: relative;
              height: auto;
              -webkit-box-sizing: border-box;
                      box-sizing: border-box;
              padding: 10px;
              font-size: 16px;
            }
            .form-signin .form-control:focus {
              z-index: 2;
            }
            .form-signin input[type="email"] {
              margin-bottom: -1px;
              border-bottom-right-radius: 0;
              border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
              margin-bottom: 10px;
              border-top-left-radius: 0;
              border-top-right-radius: 0;
            }
    </style>
    </head>

    <body>
        <div class='container'>    
            <img src="src-rg/img/logo_rokagym.jpg" class="rounded mx-auto d-block" alt="..." style="width: 200px;">
            <form class="form-signin" action="validar.htm" method="post">
                <h2 class="form-signin-heading text-center">Ingresa</h2>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input name="txtUsername" type="text" id="txtUsername" class="form-control" placeholder="Usuario" onkeypress="return soloLetras(event);" autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input name="txtPassword" type="password" id="txtPassword" class="form-control" placeholder="Contraseña">
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Iniciar Sesión</button>
            </form>
            <p class="text-center text-danger"> ${requestScope.mensaje}</p>

        </div> 
    </body>
</html>
