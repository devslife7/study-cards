class Course < ApplicationRecord
  belongs_to :user
  has_many :course_cards
  has_many :cards, through: :course_cards
end
