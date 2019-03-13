Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get 'messenger', to: 'messengers#index'
  get 'get_private_conversation', to: 'messengers#get_private_conversation'
  get 'get_group_conversation', to: 'messengers#get_group_conversation'
  get 'open_messenger', to: 'messengers#open_messenger'

resources :posts do
  collection do
    get 'hobby'
    get 'study'
    get 'team'
  end
end

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'signup', to: 'devise/registrations#new'
end

namespace :private do 
  resources :conversations, only: [:create] do
    member do
      post :close
      post :open
    end
  end
  resources :messages, only: [:index, :create]
end




end
