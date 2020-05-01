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
  namespace :business do
    root to: 'shops#index'
    resources :shops
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
