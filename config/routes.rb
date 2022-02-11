Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  resources :students
  resources :cource
  get 'enroll/:id', to: 'students#enroll'
  post 'students/addenroll', to: 'students#addenroll'
end
