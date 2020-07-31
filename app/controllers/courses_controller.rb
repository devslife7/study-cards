class CoursesController < ApplicationController

  def index
    courses = Course.all
    render json: courses, include: [:cards]
  end

  def create
    newUser = Course.create(courseParams)

    render json: newUser, include: [:cards]
  end

  def destroy
    # byebug
    course = Course.find(params[:id])
    course.destroy
    render json: course
  end

  private

  def courseParams
    params.require(:course).permit(:name, :private, :user_id)
  end
end
