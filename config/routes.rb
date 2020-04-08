Rails.application.routes.draw do
  root to: 'shops#index'
  resources :shops
  resources :areas
  resources :categories


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
