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
    	%>
    	<%
    	DRIVER = "com.mysql.cj.jdbc.Driver";
        HOST = "jdbc:mysql://localhost:3306/ssk";
        USER = "root";
        PASS = "76757476Anush";
    	
    
    %>
    <%
    Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	String doct = request.getParameter("doctor");
   	String chi = request.getParameter("child");
   	String sl = request.getParameter("slot");
   	String da = request.getParameter("day");
   	
   String qry1 = "update "+doct+" set "+s1+" = 'green' where day = '"+da+"'";
   Statement stmt = con.createStatement();
   rs.executeUpdate(qry1);
   	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
confirm
</body>
</html>