# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
charlie = User.create(first_name: 'Charlie', last_name: 'Brown')
jon = User.create(first_name: 'Jon', last_name: 'Snow')

pumpkin_basher = LaunchApplication.create(
  title: 'Pumpkin Basher',
  description: 'tons of fun smashing pumpkins - without Billy Corgan',
  creator: charlie
)

rating = Rating.create(
  launch_application: pumpkin_basher,
  score: 1234,
  user: jon
)
