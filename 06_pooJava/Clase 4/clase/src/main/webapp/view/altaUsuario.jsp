<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
  <body>
  	<jsp:include page="menu.jsp"></jsp:include>
  	
    <div class="container">
    	<div class="border rounded m-2 text-center">
    		<div class="fs-3 my-4" >Alta Usuario</div>
    		
    		<div class="d-flex justify-content-center">
    			<form action="../controller/addUsuario.jsp" method="post">
    				<input type="email" name="user" id="user" onkeyup="validarUser()" class="form-control mb-3" placeholder="usuario" required>
    				<input type="password" name="pass" id="pass" onkeyup="fortPass()" class="form-control mb-3" placeholder="contraseña" required>
    				<input type="password" name="rePass" id="repPass" class="form-control mb-3" placeholder="reingresar contraseña" required>
    				<input type="submit" value="Enviar" class="btn btn-primary">
    			</form>
    		</div>
    		<div id="msjUser"></div>
    		<% 
    		String mensaje=request.getParameter("mensaje");
    		
    		if(mensaje!=null) {
	    		out.println("<div class='text-danger m-2'>");
	    		out.println(mensaje);
	    		out.println("</div>");
    		}
    		%>
    	</div>
    		
    	
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/registro.js"></script>
  </body>
</html>