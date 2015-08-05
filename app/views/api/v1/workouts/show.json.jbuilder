json.workout 
json.id @workout.id
json.name @workout.name
  json.workout_exercises @workout.workout_exercises.each do |workout_exercise|
    json.sets workout_exercise.sets
    json.reps workout_exercise.reps
    json.id workout_exercise.exercise.id
    json.name workout_exercise.exercise.name
    json.instruction workout_exercise.exercise.instruction
    json.equipment workout_exercise.exercise.equipment
    json.muscle workout_exercise.exercise.muscle
    json.level workout_exercise.exercise.level
    json.exercise_times workout_exercise.exercise.exercise_times
    json.images workout_exercise.exercise.images.each do |image|
      json.image image
    end
  end