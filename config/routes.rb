Rails.application.routes.draw do
  resources :course_cards
  resources :cards
  resources :courses
  resources :users
  
  #return a user ID 
  get '/users/find/:username' => 'users#find_by_username'
end
