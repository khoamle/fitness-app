(function() {
  "use strict";
 
  angular.module("app").controller("exercisesCtrl", function($scope, $http, Flash) {

    $scope.setup = function() {
      $http.get("/api/v1/workouts.json").then(function(response) {
        $scope.workouts = response.data;
      });
    };

    $scope.addToWorkout = function(sets, reps, exerciseId, workoutId) {
      
      var workoutExercise = {
        sets: sets,
        reps: reps,
        exerciseId: exerciseId,
        workoutId: workoutId
      };

      $http.post('/api/v1/workout_exercises.json', workoutExercise).then(function(response){
        console.log("success");
        $scope.success();
      });
    };

    $scope.success = function () {
        var message = 'Successfully added to workout.';
        Flash.create('success', message);
    };



    window.scope = $scope;
  });


 
}());