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
    	String nm;
    	String dob;
    	String pname;
    	String add;
    	String phno;
    	%>
    	<%
    DRIVER = "com.mysql.jdbc.Driver";
    HOST = "jdbc:mysql://localhost:3306/ssk";
    USER = "root";
    PASS = "76757476Anush";
    con = null;
    
    
    
    %>
    <% 
  	
   	
   	Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	Statement stmt = con.createStatement();
   	String ch = request.getParameter("child");
   	String d = request.getParameter("doc");
   	String day = request.getParameter("day");
   	String sl = request.getParameter("slot");
   	String qry = "Insert into recommend values('"+d+"','"+ch+"','"+sl+"','"+day+"')";
   	stmt.executeUpdate(qry);
   	
   	
   	
   	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Success
</body>
</html>