class CardsController < ApplicationController
  def create
    courseId = dataParams[:course_id]
    cardsParam = dataParams[:cards]
    course = Course.find_by(id: courseId)

    cards = cardsParam.map do |card| 
      myCard = course.cards.build(card)
      course.save
      myCard
    end

    render json: cards, :except => [:updated_at, :created_at]
  end 

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: card
  end

  private
  def dataParams
    params.require(:data).permit(:course_id,:cards => [:card_front,:card_back])
  end 
end
