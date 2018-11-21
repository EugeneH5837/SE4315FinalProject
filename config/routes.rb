Rails.application.routes.draw do
  resources :global_links
  resources :globals
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
