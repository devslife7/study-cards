class UsersController < ApplicationController

  def index
    users = User.all

    render json: users, :include => {
      :courses => {
        :include => {:cards => {:except => [:updated_at, :created_at]}},
        :except => [:updated_at, :created_at]},
    }, :except => [:updated_at]
  end
end
