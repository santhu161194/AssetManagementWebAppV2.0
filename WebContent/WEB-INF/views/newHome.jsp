<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script>
	$(function() { // when DOM is ready
		$(".showhide").click(function() {
			var toLoad = $(this).attr('id');// when #showhidecomment is clicked

			$("#content").load(toLoad); // load the sample.jsp page in the #chkcomments element
		});
	});

	$(function() {
		$('[data-toggle="tooltip"]').tooltip();
		$(".side-nav .collapse").on(
				"hide.bs.collapse",
				function() {
					$(this).prev().find(".fa").eq(1).removeClass(
							"fa-angle-right").addClass("fa-angle-down");
				});
		$('.side-nav .collapse').on(
				"show.bs.collapse",
				function() {
					$(this).prev().find(".fa").eq(1).removeClass(
							"fa-angle-down").addClass("fa-angle-right");
				});
	})
</script>
<title>Welcome Home</title>
<style type="text/css">
<%@ include file ="css/newHome.css" %>
</style>
</head>
<body>
	<div id="throbber" style="display: none; min-height: 120px;"></div>
	<div id="noty-holder"></div>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="http://cijulenlinea.ucr.ac.cr/dev-users/"> <img
				src="https://cdn6.aptoide.com/imgs/9/4/0/940450d0a1468b4a516ed58b027ed204_icon.png?w=240"
				alt="LOGO"">
			</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			<li><a href="#" data-placement="bottom" data-toggle="tooltip"
				href="#" data-original-title="Stats"><i
					class="fa fa-bar-chart-o"></i> </a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">${username} <b class="fa fa-angle-down"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-fw fa-user"></i> Edit
							Profile</a></li>
					<li><a href="#"><i class="fa fa-fw fa-cog"></i> Change
							Password</a></li>
					<li class="divider"></li>
					<li><a href="invalidate"><i class="fa fa-fw fa-power-off"></i>
							Logout</a></li>
				</ul></li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="requests" data-toggle="" data-target=""><i
						class=""></i> Requests <i
						class=""></i></a>
					
				<li><a href="#" data-toggle="" data-target=""><i
						class=""></i> Assets <i
						class=""></i></a>
					
			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>
		
		<div id="page-wrapper">
			<div class="container-fluid"></div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
		<div id="main-content"><h4>hjbfsabdfdhbsafjsadhbnjkfsdabkfjbsdjkfsdf</h4></div>
	</div>
	<div class="row">
		<div class="md-6">
			<h1>hdjhbflk</h1>
		</div>
	</div>
	<!-- /#wrapper -->
	
	
</body>
</html>
