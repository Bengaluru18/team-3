<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%!
    	String DRIVER;
    	String HOST;
    	String USER;
    	String PASS;
    	Connection con;
    	Statement stmt;
    	ResultSet rs;
    	String status;
    	String msg;
    	String role;
    	%>
    <%
    DRIVER = "com.mysql.jdbc.Driver";
    HOST = "jdbc:mysql://localhost:3306/ssk";
    USER = "root";
    PASS = "76757476Anush";
    con = null;
    status = request.getParameter("status");
    %>
    <% 
  	String usrName = request.getParameter("email");
    String pass = request.getParameter("pass");
   	
   	Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	
  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(status != null) {
	
		if (status.equals("2"))
			session.invalidate();
		
		else {
			try{
				String query = "Select * from users where username = '"+usrName+"'";
		   		stmt = con.createStatement();
		   		rs = stmt.executeQuery(query);
		   		
				rs.next();
				
				String pwd = rs.getString("password");
				if(pwd.equals(pass)){
					int index = usrName.indexOf('@');
					String firstPartEmail = usrName.substring(0,index);
					session.setAttribute("user",firstPartEmail);
					role = rs.getString("roles");
					session.setAttribute("role",role);
					if(role.equals("doctor")){
						response.sendRedirect("doc_home.html");
					}
					else if(role.equals("reception")){
						response.sendRedirect("recep_home.html");
					}
					else{
						
					}
					//session.sendRedirect("");
				}
				else{
					msg = "Incorrect Password";
				}
			}
			catch(Exception e){
				msg = "Incorrect Username";
				System.out.println(e);
			}
			
			
		}
	}
	%>
	<p><%=msg%></p><br>
	
</body>
</html>