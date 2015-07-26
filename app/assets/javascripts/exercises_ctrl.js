(function() {
  "use strict";
 
  angular.module("app").controller("exercisesCtrl", function($scope, $http) {

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
        $scope.workout_exercises.push(workoutExercise);
      }, function(error) {
        $scope.errors = error.data.errors;
      });

    };



    window.scope = $scope;
  });


 
}());