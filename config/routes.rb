Rails.application.routes.draw do

  get 'ratings/create'

  get 'ratings/edit'

  root 'staticpages#index'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :recipes
  resources :categories, only: [:index, :show]
end
