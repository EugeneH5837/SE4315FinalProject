Rails.application.routes.draw do
  resources :tier_three_links
  resources :tier_two_links
  devise_for :tier_one_links
  resources :tier_one_links
  devise_for :global_links
  resources :global_links
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
