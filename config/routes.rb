Rails.application.routes.draw do

  resources :artists
  resources :albums
  resources :tracks
  root 'artists#index'


end
