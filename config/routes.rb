Rails.application.routes.draw do

  devise_for :users

  root 'homes#top'
  get 'homes/top'
  get 'homes/about'
  get 'creators/designer'
  get 'creators/stylist'
  get 'creators/hairmake'
  get 'creators/photographer'

  resources :users, only: [:edit, :show, :update]
  get 'user/unsubscribe' => 'users#unsubscribe', as: :unsubscribe
  patch 'user/withdraw' => 'users#withdraw'

  resources :posts do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end

  get 'rooms/index'
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  resources :notifications, only: [:index] do
    collection do
      delete :destroy_all
    end
  end

end
