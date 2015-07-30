json.workout 
json.id @workout.id
json.name @workout.name
json.exercises @workout.exercises.each do |exercise|
  json.id exercise.id
  json.name exercise.name
  json.instruction exercise.instruction
  json.equipment exercise.equipment
  json.muscle exercise.muscle
  json.level exercise.level
  json.images exercise.images.each do |image|
    json.image image
  end
  json.exercise_times exercise.exercise_times
end