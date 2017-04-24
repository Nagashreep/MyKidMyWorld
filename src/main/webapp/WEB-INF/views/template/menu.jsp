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
		
		<nav class="menu">
			<ul>
				<li class="tab"><a href="${flowExecutionUrl}&_eventId=graniStories" >Grany Stories</a>
					<ul class="subMenu">
						<li class="subTab"><a href="#">Audio</a></li>
						<li class="subTab"><a href="#">Video</a></li>
						<li class="subTab"><a href="#">Written</a></li>
					</ul>	
				</li>
				<li  class="tab"><a href="${flowExecutionUrl}&_eventId=myStories">My Stories</a></li>
				<li  class="tab"><a href="${flowExecutionUrl}&_eventId=myPics">My cute pics </a></li>
				<li  class="tab"><a href="${flowExecutionUrl}&_eventId=myIdeas">My ideas</a></li>	
			</ul>
		</nav>
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
