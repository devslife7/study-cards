Rails.application.routes.draw do
  resources :course_cards
  resources :cards
  resources :courses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end