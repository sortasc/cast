Cast.controller('JourneysCtrl', ['$scope', '$http', function($scope, $http){
	$scope.tools = {
		clock: false,
		journey: false
	}
	
	// starts clock counter
	$scope.start = function(){
		this.tools.clock = true
	}
	
	// add new roster
	$scope.place = function(){
		this.tools.journey = true
	}

}]);