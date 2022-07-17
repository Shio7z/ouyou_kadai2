Rails.application.routes.draw do


  devise_for :users
  root to: "homes#top"
  get '/abouts' => "homes#about", as: 'abouts'
  
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]

  
end