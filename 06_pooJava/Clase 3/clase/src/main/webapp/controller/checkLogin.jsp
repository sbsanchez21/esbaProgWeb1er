<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE user='"+user+"' AND pass='"+pass+"' ");
	
	if(rs.next()) {
		response.sendRedirect("../view/inicio.jsp");
	} else {
		response.sendRedirect("../view/login.jsp?mensaje=Usuario%20o%20password%20incorrectos");
	}
	
%>