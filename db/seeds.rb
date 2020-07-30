# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CourseCard.destroy_all
Card.destroy_all
Course.destroy_all
User.destroy_all

usersArray = []
usersArray << User.create(username: 'Jake')
usersArray << User.create(username: 'Nick')
usersArray << User.create(username: 'John')

courseArray = []
10.times do
  courseArray << Course.create(name: Faker::Educator.unique.course_name, private: Faker::Boolean.boolean, user_id: usersArray.sample.id)
end

30.times do
  Card.create(card_front: "#{Faker::Music.genre} Question", card_back: "#{Faker::Games::LeagueOfLegends.quote} Answer")
end

20.times do
  CourseCard.create(correct: rand(0..10), incorrect: rand(0..10), course_id: Course.all.sample.id, card_id: Card.all.sample.id)
end