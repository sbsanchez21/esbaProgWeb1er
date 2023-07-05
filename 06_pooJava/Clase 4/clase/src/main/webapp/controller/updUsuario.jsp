<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%	
	String id=request.getParameter("id");
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	try {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		Integer okUpd=st.executeUpdate("UPDATE usuarios SET user='"+user+"', pass='"+pass+"' WHERE id="+id);
		
		if(okUpd==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/editarUsuario.jsp?mensaje=Error%20al%20modificar%20usuario");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../view/editarUsuario.jsp?mensaje=Error%20al%20modificar%20usuario");
		
	}
	
	
%>