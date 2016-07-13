Rails.application.routes.draw do

  root 'application#hello'
  resources: user
  resources: sessions only: [:create, :destroy]
end
