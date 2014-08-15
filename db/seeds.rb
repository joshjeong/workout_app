# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

josh = User.create(name: 'josh', email: 'j', password: 'asdf')
w1 = josh.workouts.create(name: 'push up', reps: 15)
w11 = josh.workouts.create(name: 'push up', reps: 16)
w12 = josh.workouts.create(name: 'push up', reps: 19)
w2 = josh.workouts.create(name: 'run')
w3 = josh.workouts.create(name: 'bench', set: 1, reps: 3, weight: 150)
w31 = josh.workouts.create(name: 'bench', set: 1, reps: 4, weight: 160)
w32 = josh.workouts.create(name: 'bench', set: 1, reps: 5, weight: 170)
w4 = Workout.create(name: 'yooooooo')

