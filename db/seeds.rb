CategorizedExercise.create!([
  {exercise_id: 1, category_id: 3}
])
Category.create!([
  {name: "Abdominals"},
  {name: "Arms"},
  {name: "Back"},
  {name: "Shoulders"},
  {name: "Legs"},
  {name: "Chest"}
])
Comment.create!([
  {body: nil, exercise_id: 1}
])
Exercise.create!([
  {name: "Bent Over Barbell Row", instruction: "Holding a barbell with a pronated grip (palms facing down), bend your knees slightly and bring your torso forward, by bending at the waist, while keeping the back straight until it is almost parallel to the floor. The barbell should hang directly in front of you as your arms hang perpendicular to the floor and your torso. Now, while keeping the torso stationary, breathe out and lift the barbell to you. Keep the elbows close to the body and only use the forearms to hold the weight. At the top contracted position, squeeze the back muscles and hold for a brief pause. Then inhale and slowly lower the barbell back to the starting position. Repeat for the recommended amount of repetitions.", equipment: "Barbell", muscle: "Middle Back", level: "Beginner", image: nil}
])
