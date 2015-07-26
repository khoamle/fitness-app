(function() {
  "use strict";
 
  angular.module("app").controller("exerciseTimesCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/exercise_times.json").then(function(response) {
        $scope.exercise_times = response.data;
      });
      $scope.daysOfWeeks = {
        1: "Sunday",
        2: "Monday",
        3: "Tuesday", 
        4: "Wednesday",
        5: "Thursday", 
        6: "Friday", 
        7: "Saturday"
      };
      
    };

    $scope.addExerciseTime = function(exerciseId, time, dayId) {
      var exerciseTime = {
        exerciseId : exerciseId,
        time: time,
        dayId: dayId
      };

      $http.post('/api/v1/exercise_times.json', exerciseTime).then(function(response){
        $scope.exercise_times.push(exerciseTime);
      });
    };


    window.scope = $scope;
  });


 
}());