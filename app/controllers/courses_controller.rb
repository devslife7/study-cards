class CoursesController < ApplicationController

  def index
    courses = Course.all
    render json: courses, include: [:cards]
  end

  def create
    newUser = Course.create(courseParams)

    render json: newUser, include: [:cards]
  end

  private

  def courseParams
    params.require(:course).permit(:name, :private, :user_id)
  end
end
