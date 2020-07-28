class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:courses]
    # render :json => users.to_json(:include => { :courses => {:include =>:c} })
    # render json: CompanySerializer.new(@companies, include: [:projects, :company_projects, :employees]).serialized_json
  end
end
