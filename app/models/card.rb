class Card < ApplicationRecord
  has_many :course_cards, :dependent => :destroy
  has_many :courses, through: :course_cards
end
