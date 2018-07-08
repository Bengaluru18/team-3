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
    	String un;
    	ResultSet rs;	
    	
    	%>
    <%
    String s1_d1 = request.getParameter("d1_s1");
	String s1_d2 = request.getParameter("d2_s1");
	String s1_d3 = request.getParameter("d3_s1");
	String s1_d4 = request.getParameter("d4_s1");
	String s1_d5 = request.getParameter("d5_s1");
	
	String s2_d1 = request.getParameter("d1_s2");
	String s2_d2 = request.getParameter("d2_s2");
	String s2_d3 = request.getParameter("d3_s2");
	String s2_d4 = request.getParameter("d4_s2");
	String s2_d5 = request.getParameter("d5_s2");
	
	
	String s3_d1 = request.getParameter("d1_s3");
	String s3_d2 = request.getParameter("d2_s3");
	String s3_d3 = request.getParameter("d3_s3");
	String s3_d4 = request.getParameter("d4_s3");
	String s3_d5 = request.getParameter("d5_s3");
    DRIVER = "com.mysql.jdbc.Driver";
    HOST = "jdbc:mysql://localhost:3306/ssk";
    USER = "root";
    PASS = "76757476Anush";
    con = null;
    //status = session.getAttribute("status");
    un = (String)session.getAttribute("user");
    
    %>
    <%
    Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	stmt = con.createStatement();
   	String qry = "truncate table "+un;
	stmt.executeUpdate(qry);
    Statement st = con.createStatement();
	String in1 = "Insert into "+un+" values('Medical Doctor','1','"+s1_d1+"','"+s2_d1+"','"+s3_d1+"')";
	stmt.executeUpdate(in1);
	String in2 = "Insert into "+un+" values('Medical Doctor','2','"+s1_d2+"','"+s2_d2+"','"+s3_d2+"')";
	stmt.executeUpdate(in2);
	String in3 = "Insert into "+un+" values('Medical Doctor','3','"+s1_d3+"','"+s2_d3+"','"+s3_d3+"')";
	stmt.executeUpdate(in3);
	String in4 = "Insert into "+un+" values('Medical Doctor','4','"+s1_d4+"','"+s2_d4+"','"+s3_d4+"')";
	stmt.executeUpdate(in4);
	String in5 = "Insert into "+un+" values('Medical Doctor','5','"+s1_d5+"','"+s2_d5+"','"+s3_d5+"')";
	stmt.executeUpdate(in5);
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>hey
</body>
</html>