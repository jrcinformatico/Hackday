HackDay::Application.routes.draw do
  
  get "cronogramas/index"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :personas
end
