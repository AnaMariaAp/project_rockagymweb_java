<%
String sUrlPage = "bienvenida.jsp";
  if (request.getParameter("page") != null) { 
    sUrlPage = request.getParameter("page").toString()+".jsp";
  }
  
 
%>
<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La Roka GYM - Gestor</title>
        <link href="src-rg/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="src-rg/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="src-rg/css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato:300,400">
        <script src="src-rg/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" />
        <div class="container"> 
          <jsp:include page="<%=sUrlPage%>" />
        </div>

    </body>
</html>



