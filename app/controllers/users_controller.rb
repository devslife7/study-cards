class UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users).to_json
  end

  def show
    user = User.find_by(id: params[:id])

    render json: UserSerializer.new(user).to_json
  end

  def find_by_username
    user = User.find_by(username: params[:username])

    render json: UserSerializer.new(user).to_json
  end

end
