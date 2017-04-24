<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<html>
	<head>
		<meta charset="utf-8">
		<title><tiles:getAsString  name="title"/></title>
		<link href="resources/css/style.css" rel="stylesheet" type="text/css">
		
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
	</head>
	<body class="main">
		<div class="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<tiles:insertAttribute name="menu"/>
		<div style="width: 100%;">
			<div class="sideNav">
				<tiles:insertAttribute name="sideNav"/>
			</div>
			<div class="body">
				<tiles:insertAttribute name="body"/>
			</div>
		</div>
		<div class="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</body>
</html>