Rails.application.routes.draw do
  root to: 'films#index'
  devise_for :users
  resources :films
  resources :favorites
end
