Rails.application.routes.draw do

  root to: 'tops#index'
  resources :shops do
    post 'inquiry' => 'shops#inquiry', on: :member
  end
  resources :areas
  resources :categories
  resources :tops


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
