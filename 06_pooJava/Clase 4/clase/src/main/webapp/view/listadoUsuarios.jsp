<!doctype html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 		rel="stylesheet"		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 		crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">

		<h1 class="text-center m-3 fs-3">Listado de Usuarios</h1>
		
    		<% 
    		String mensaje=request.getParameter("mensaje");
    		
    		if(mensaje!=null) {
	    		out.println("<div class='text-danger m-2'>");
	    		out.println(mensaje);
	    		out.println("</div>");
    		}
    		%>
		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
			Agregar Usuario
		</button>
		
		
		<table class="table text-center">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">User</th>
					<th scope="col">Password</th>
					<th scope="col">Operaciones</th> 
				</tr>
			</thead>
			<tbody>
				<!-- dentro de estas etiquetas programamos en java  -->

				<% 
				
				try {
			    	/* podemos conectarno a la db, buscar los alumnos, generar una tabla y enviarla al cliente  */
			    	ConexionDB conn=new ConexionDB();
					Statement st=conn.conectar();
					ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
					
					while(rs.next()) {
						out.println("<tr>");
						
						out.println("<td>");
						Integer id=rs.getInt("id");
						out.println(id);
						out.println("</td>");
						
						out.println("<td>");
						String user=rs.getString("user");
						out.println(user);
						out.println("</td>");

						out.println("<td>");
						out.println(rs.getString("pass"));
						out.println("</td>");
						
						out.println("<td>");
						out.println("<a href='editarUsuario.jsp?id="+id+"'><i class='bi bi-pencil-fill m-1'></i></a>");
						out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' id='"+id+"' user='"+user+"'><i class='bi bi-trash-fill m-1'></i></a>");
						out.println("</td>");					

						out.println("</tr>");
					}
										
				} catch (Exception e) {
					//TODO: redireccionar a página de error
					out.println("<div class='text-center m-3 fs-3 text-danger'>Error al cargar usuarios</div>");

				}

		    	
		    	%>
			</tbody>
		</table>

		<div class="modal fade" id="delModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Usuario</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		        <form action="../controller/delUsuario.jsp" method="post">
		        	<input type="hidden" name="idUser" id="idUser">
					<div class="modal-body text-center">
					    <div class="mb-3">
					      <label for="recipient-name" class="col-form-label">¿Desea eliminar el usuario?</label>
					      <div id="dataUser" class="text-danger"></div>
					    </div>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
					  <input type="submit" class="btn btn-primary" value="Eliminar">
					</div>
		        </form>
		    </div>
		  </div>
		</div>


		<div class="modal fade" id="addModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Usuario</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		       <div class="d-flex justify-content-center">
    			<form action="../controller/addUsuario.jsp" method="post">
    				<input type="email" name="user" id="user" onkeyup="validarUser()" class="form-control mb-3" placeholder="usuario" required>
    				<input type="password" name="pass" id="pass" onkeyup="fortPass()" class="form-control mb-3" placeholder="contraseña" required>
    				<input type="password" name="rePass" id="repPass" class="form-control mb-3" placeholder="reingresar contraseña" required>
    				<input type="submit" value="Enviar" class="btn btn-primary">
    			</form>
    			</div>
		    </div>
		  </div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
		
	<script src="js/listUsu.js"></script>	
</body>
</html>