Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'tops#index'

  resources :shops, except: :index do
    post 'inquiry' => 'shops#inquiry', on: :member
  end
  resources :areas
  resources :categories
  resources :tops
  get '/:category_key/' => 'shops#index', constraints: { category_key: /hair_salon|nail|eyelash|spa/ }, as: 'shops_category'

  namespace :login do
    resource :profile, only: [:show, :create, :edit, :update]
  end
  namespace :admin do
    resources :shops
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
