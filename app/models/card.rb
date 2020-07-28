class Card < ApplicationRecord
  has_many :course_cards
  has_many :courses, through: :course_cards
end
