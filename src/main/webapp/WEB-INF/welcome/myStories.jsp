<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta charset="utf-8">
<title>My Kid My World</title>
<link href="resources/css/style.css" rel="stylesheet" type="text/css">

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>

</head>
<body>
	<div id="background" class="background">
		<div ng-app="myApp" ng-controller="loginCtrl" ng-init="displayForm=false">
			<h3 class="loginText">Login to contribute</h3>
			
			<div style="width: 100%;" id="initialLogin" ng-show="!displayForm">
				<a href="#" ng-click="toggle()"><img alt="login" src="resources/images/login.jpg" class="welcome-login1"></a>
			</div>
			
			<div style="width: 100%;" id="loginForm" ng-show="displayForm">
				<div>
					<a href="#" ng-click="toggle()"><img alt="login" src="resources/images/login.jpg" class="welcome-login2"></a>
				</div>
				<div>
					<div style="width: 21%;" class="welcome-loginForm">
						<br/>User Name <br/> <br/>
						Password
					</div>
					<div class="welcome-loginForm">
						<input type="text" name="userName" placeholder="enter User Name" size="25" /> <br/> <br/>
						 <input type="password" name="password" placeholder="enter Password" size="25"/> <br/> <br/>
						<input type="button" value="Submit" class="submit-button"/>
					</div>
				</div>
			</div>
			
		<!-- 	<div style="width: 100%;"> -->
		<!-- 		<img src="resources/images/tree1.jpeg" alt="tree" class="welcome-tree"/> -->
				
		<!-- 		<img src="resources/images/cutiePie.jpg" alt="foundation" class="welcome-cutiePie"/> -->
		<!-- 		<img src="resources/images/graniStory.jpg" alt="foundation" class="welcome-graniStory"/> -->
		<!-- 		<img src="resources/images/ideas.jpg" alt="foundation" class="welcome-ideas"/> -->
		<!-- 		<img src="resources/images/myStory.jpg" alt="foundation" class="welcome-myStory"/> -->
		<!-- 	</div> -->
			
		<!-- 	<div style="width: 100%;"> -->
		<!-- 		<img src="resources/images/foundation.jpg" alt="foundation" class="welcome-foundation"/> -->
		<!-- 	</div> -->
		<div class="sideNav">
			<div class="tab"><a href="${flowExecutionUrl}&_eventId=graniStories" >Grany Stories</a></div>
			<div class="tab"><a href="${flowExecutionUrl}&_eventId=myStories">My Stories</a></div>
			<div class="tab"><a href="${flowExecutionUrl}&_eventId=myPics">My cute pics </a></div>
			<div class="tab"><a href="${flowExecutionUrl}&_eventId=myIdeas">My ideas</a></div>
		</div>
		</div>
	</div>
	
<script>
var app = angular.module('myApp', ['ngAnimate']);
app.controller('loginCtrl', function($scope) {
	$scope.displayForm = false;
    $scope.toggle = function() {
        $scope.displayForm = !$scope.displayForm;
    };
});
</script>
</body>
</html>