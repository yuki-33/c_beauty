Rails.application.routes.draw do

  devise_for :users
  root to: 'tops#index'
  get '/:category_key/' => 'shops#index', constraints: { category_key: /hair_salon|nail|eyelash|spa/ }, as: 'shops'
  resources :shops, except: :index do
    post 'inquiry' => 'shops#inquiry', on: :member
  end

  resources :areas
  resources :categories
  resources :tops


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
