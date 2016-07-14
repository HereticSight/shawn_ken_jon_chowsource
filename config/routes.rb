Rails.application.routes.draw do

  root 'staticpages#index'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :recipes
end
