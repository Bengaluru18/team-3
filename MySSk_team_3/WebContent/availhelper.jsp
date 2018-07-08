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
    
    String dname = request.getParameter("doc");
    Session.setAttribute("flag",true);
    
    %>
    <% 
  
   	
   	Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	Statement stmt = con.createStatement();
   	String qry = "Select * from "+dname;
   	rs = stmt.executeQuery(qry);
   	int i = 0;
   	while(rs.next()){
   		Session.setAttribute(String.valueOf(i)+"d",rs.getString("slot1"));
   		i++;
   		Session.setAttribute(String.valueOf(i)+"d",rs.getString("slot2"));
   		i++;
   		Session.setAttribute(String.valueOf(i)+"d",rs.getString("slot3"));
   		i++;
   	
   	}
   	response.sendRedirect("avaiL.jsp");
   	
   	String sd=request.getParameter("date_slot");
   	String day=sd.charAt(0);
   	String slot=sd.charAt(1);
   	
   	String qry = "Insert into recomends";
   	rs = stmt.executeQuery(qry);
   	
   	
   	
   	
   	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>