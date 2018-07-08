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
    	
    	String dept;
    	String day;
    	String slot1;
    	String slot2;
    	String slot3;  
    	ArrayList<String> days = new ArrayList<String>();
    	
    	%>
    	<%
    	//Session.setAttribute("flag",false);
    DRIVER = "com.mysql.jdbc.Driver";
    HOST = "jdbc:mysql://localhost:3306/ssk";
    USER = "root";
    PASS = "76757476Anush";
    con = null;
    String rgno_or_name;
    String rgno = request.getParameter("regno");    
    String doc=request.getParameter("doc");
    System.out.println(doc);
    %>
     <% 
  	
   	
   	Class.forName(DRIVER);
   	con = DriverManager.getConnection(HOST,USER,PASS);
   	
  	Statement stmt = con.createStatement();
  	String qry = "Select * from child where regno = '"+rgno+"'";
  	ResultSet rs = stmt.executeQuery(qry);
  	rs.next();
  	nm = rs.getString("name");
  	dob = rs.getString("dob");
  	pname = rs.getString("pname");
  	add = rs.getString("address");
  	phno = rs.getString("phno");
  	
  	String qry1 = "Select * from "+doc;
  	ResultSet rs1 = stmt.executeQuery(qry1);
  	while(rs1.next()){
  	
  		days.add(rs1.getString("slot1"));
  		days.add(rs1.getString("slot2"));
  		days.add(rs1.getString("slot3"));
	
	
  	}
    %>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
select option[value=" "] { /* value  Scheduleval */
    background-color:  white;
}
select option[value=" Schedule "] { /* value  Scheduleval */
    background-color: red;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}
th, td {
    text-align: left;
    padding: 16px;
}
tr:nth-child(even) {
    background-color: #f2f2f2
}
</style>
	<title>Spastics</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
                        <a class="active-menu"  href="index1.html"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
					 <li  >
                        <a  href="./searchid.html"><i class="fa fa-edit fa-3x"></i> Search By Patient Id </a>
                    </li>
					<li  >
                        <a  href="./searchid.html"><i class="fa fa-edit fa-3x"></i> Search By Patient Reg No. </a>
                    </li>
					<li>
                        <a  href="avail.html"><i class="fa fa-square fa-3x"></i> Availability Calendar </a>
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
                     <h2>User Dashboard</h2>   
                        <h5>Welcome User, Love to see you back. </h5>  
                        
                    </div>
                </div>              
                 <!-- /. ROW  -->
              
                 <!-- /. ROW  -->
                <hr />  
				<div class="row">
					<form "float:right;" action = "availhelper.jsp">
					<textarea name="history" rows="10" cols="100" placeholder="Add history here">
					<%=nm %>
					<%=dob %>
					<%=pname %>
					<%=add %>
					<%=phno %>
					
					
					</textarea><br><br>
		<br><br>
		
<table>
	<tr>
		<th>Days and slots</th>
		<th>DAY 1</th>
		<th>DAY 2</th>
		<th>DAY 3</th>
		<th>DAY 4</th>
		<th>DAY 5</th>
	</tr>

	<tr>
		<th>Slot 1</th>
		<td><select>
			<option><%=days.get(0) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%= days.get(3)%></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%=days.get(6) %></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(9) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(12) %> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>


	<tr>
		<th>Slot 2</th>
		<td><select>
			<option><%=days.get(1) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(4) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%=days.get(7) %></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%=days.get(10) %></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(13) %> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>

	<tr>
		<th>Slot 3</th>
		<td><select>
			<option><%=days.get(2) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%=days.get(5) %></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(8) %> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> <%=days.get(11) %></option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option><%=days.get(14) %> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>

	</table>

	<br>
	<input type="submit" name="submit" value="Submit" ><br>
	<br>
	<input type="reset" name="reset">
</form>
<form action = "success.jsp">
    <input type="hidden" name="child" value=<%=nm %>>
    <input type="hidden" name="doc" value=<%=doc%>>    
	<input type="text" placeholder="One text box" name = "day"><br><br>
    <input type="text" placeholder="Second text box" name = "slot"><br><br>
	<input type="submit" name="submit" value="Submit"><br>
		
</form>
					
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
    <div>
    
</div>
</body>
</html>