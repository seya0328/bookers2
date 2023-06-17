Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about", as: "about"
 
  
  resources :books, only: [:new, :create, :index, :show, :destroy]
  
  resources :users,only: [:new, :index, :show, :edit, :updete]
  
  
  
 
end
