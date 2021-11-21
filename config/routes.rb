Rails.application.routes.draw do
  root 'home#index'
  
  resources :sections
  resources :pages
  resources :subjects
  resources :sections
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
