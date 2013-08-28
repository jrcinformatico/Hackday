HackDay::Application.routes.draw do
  
  get "conferencias/index"
  get "conferencias/ponencias"
  get "conferencias/talleres"
  get "conferencias/costos"
  get "reportes/index"  
  get "cronogramas/index"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :personas
end
