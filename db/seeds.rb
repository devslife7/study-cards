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

10.times do
  user = User.create(username: Faker::Name.unique.first_name)
  course = Course.create(name: Faker::Educator.unique.course_name, private: Faker::Boolean.boolean, user_id: user.id)
  card = Card.create(card_front: 'card front', card_back: 'card back')
  course_card = CourseCard.create(correct: rand(0..10), incorrect: rand(0..10), course_id: course.id, card_id: card.id)
end

firstUser = User.first

10.times do
  course = firstUser.courses.build(name: Faker::Educator.unique.course_name, private: Faker::Boolean.boolean)
  course.save
end