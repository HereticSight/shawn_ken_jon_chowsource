Rails.application.routes.draw do

  root 'staticpages#index'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :recipes
  resources :categories, only: [:index, :show]
end
