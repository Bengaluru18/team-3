<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    	
    	/*String dept;
    	String day;
    	String slot1;
    	String slot2;
    	String slot3;  
    	ArrayList<String> days = new ArrayList<String>();*/
    	
    	%>
    	<%
    	//Session.setAttribute("flag",false);
    DRIVER = "com.mysql.jdbc.Driver";
    HOST = "jdbc:mysql://localhost:3306/ssk";
    USER = "root";
    PASS = "";
    con = null;
    /*String rgno_or_name;
    String rgno = request.getParameter("regno");    
    String doc=request.getParameter("doc");
    System.out.println(doc);*/
    %>
     <% 
  	
   	
   	Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	
  	Statement stmt = con.createStatement();
  	String qry = "Select * from child ";
  	ResultSet rs = stmt.executeQuery(qry);
  	while(rs.next())
  	{nm = rs.getString("name");
  	dob = rs.getString("dob");
  	pname = rs.getString("pname");
  	add = rs.getString("address");
  	phno = rs.getString("phno");
  	}
 
    %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Spastics </title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Spastics</a> 
            </div>
			
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Welcome to the Spastics&nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a class="active-menu"  href="index3.html"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
					
					<li>
                        <a  href="avail1.html"><i class="fa fa-edit fa-3x"></i> Doctor's Availability Calendar </a>
                    </li>
					<li>
                        <a  href="childhistory.html"><i class="fa fa-square fa-3x"></i> Child History </a>
                    </li>
					<!--
                     <li>
                        <a  href=""><i class="fa fa-desktop fa-3x"></i> </a>
                    </li>
					-->
                   
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Child History</h2>   
                     <%=nm %>
					<%=dob %>
					<%=pname %>
					<%=add %>
					<%=phno %> 
                    </div>
                </div>              
                 <!-- /. ROW  -->
              
                 <!-- /. ROW  -->
                <hr />                
                <div class="row">
                    
                    
                    
                    
                        
        </div>
                 <!-- /. ROW  -->
                <div class="row"> 
                    
                      
                               
                    
                
           </div>
                 <!-- /. ROW  -->
                
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    
     <!-- MORRIS CHART SCRIPTS -->
     
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>