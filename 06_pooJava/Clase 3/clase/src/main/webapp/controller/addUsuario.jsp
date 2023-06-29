<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	try {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		Integer okIns=st.executeUpdate("INSERT INTO usuarios (user,pass) VALUES ('"+user+"','"+pass+"')");
		
		if(okIns==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/altaUsuario.jsp?mensaje=Error%20al%20agregar%20usuario");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../view/altaUsuario.jsp?mensaje=Error%20al%20agregar%20usuario");
		
	}
	
	
%>