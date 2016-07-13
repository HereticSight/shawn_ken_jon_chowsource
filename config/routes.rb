Rails.application.routes.draw do

  root 'staticpages#index'

  
  resources :users
  resources :sessions, only: [:create, :destroy]
  resources :recipes, except: :index
end
