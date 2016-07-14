Rails.application.routes.draw do
  root 'staticpages#index'
  resources :ratings, only: [:create, :edit]
  resources :users
  resources :sessions, only: [:new, :create]
  delete '/sessions', to: 'sessions#destroy'
  resources :recipes do
    resources :recipe_ingredients, only: [:new, :create, :update, :destroy]
  end
  resources :categories, only: [:index, :show]
end
