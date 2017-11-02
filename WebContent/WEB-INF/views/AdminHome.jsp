<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <title>MPAM-Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
 
  <script>
  $(function() { // when DOM is ready
	    $(".showhide").click(function(){ 
	    	var toLoad=$(this).attr('id');// when #showhidecomment is clicked
	    	
	        $("#content").load(toLoad); // load the sample.jsp page in the #chkcomments element
	    }); 
	});

  </script>

<style type="text/css">
<%@include file="css/common.css"%>
</style>
</head>
<body>
<j:choose>
<j:when test="${not empty sessionScope.username}">

<nav class="navbar navbar-inverse">
<div class="container-fluid">
  <div class="navbar-header">
    <a class="navbar-brand" href="home">Asset Management</a>
  </div>
  <ul class="nav navbar-nav">
 <% List role = (List)session.getAttribute("role");
 if(role.contains("admin")){
%>
    <li class="active"><a href="#">Admin</a></li>
    <%} if(role.contains("edp")){%>
    <li><a  href="EDPHome">EDP</a></li>
    <%} %>
    <li ><a  href="employee">Employee</a></li>

    
  </ul>
  <ul class="nav navbar-nav navbar-right">

    <li><a href="invalidate"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
    
  </ul>
</div>
  
 </nav> 
  <div class="wrapper">

        <nav id="sidebar">

                
          
 <ul class="list-unstyled components">
  
  <li><a id="viewAssets?role=admin" href="#" class="showhide">View All Assets</a></li><br>	
   <li><a id="viewEmployees?role=admin" href="#" class="showhide">View All Employees</a></li><br>
   <li><a id="addEmployee" href="#" class="showhide">Add Employee</a></li><br>
      <li><a id="addAsset" href="#" class="showhide">Add Asset</a></li><br>
      <!-- <li><a id="addRole" href="#" class="showhide">Add Role</a></li><br> -->
       <li><a id="addRoleToEmp" href="#" class="showhide">Assign Role To Emp</a></li><br>
        <li><a id="removeRole" href="#" class="showhide">Remove Employee Role</a></li><br>
         <li><a id="resetPassword" href="#" class="showhide">ResetPassword</a></li><br>
  </ul>
  </nav>
  </div>
	
	<!-- the content is shown here -->
	
	
	<div id="content">
  
    <h5>${message}</h5>
    </div>
 
  


  </j:when>
  <j:otherwise>
  <a href="login">Click here to login</a>
</j:otherwise>
</j:choose></body>
</html>