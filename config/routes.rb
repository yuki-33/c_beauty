Rails.application.routes.draw do

  root to: 'tops#index'

  devise_for :admins, controllers: {
    sessions:      'business/sessions',
    passwords:     'business/passwords',
    registrations: 'business/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'login/sessions',
    passwords:     'login/passwords',
    registrations: 'login/registrations'
  }
  resources :areas
  resources :categories
  resources :tops

  get '/:category_key/' => 'shops#index', constraints: { category_key: /hair_salon|nail|eyelash|spa/ }, as: 'shops_category'

  resources :shops, except: :index do
    get 'search' => 'shops#search', on: :collection
    post 'confirm' => 'shops#confirm', on: :member
    post 'inquiry' => 'shops#inquiry', on: :member
    get 'favorite' => 'shops#favorite', on: :member
    get 'delete_favorite' => 'shops#delete_favorite', on: :member
  end
  
  namespace :login do
    resource :profile, only: [:show, :create, :edit, :update]
  end
  namespace :business do
    root to: 'shops#index'
    resources :shops
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
