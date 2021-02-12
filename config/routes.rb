Rails.application.routes.draw do

  devise_for :users

  root 'homes#top'
  get 'homes/top'
  get 'homes/about'
  get 'creators/designer'
  get 'creators/stylist'
  get 'creators/hairmake'
  get 'creators/photographer'

  resources :posts do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end

  resources :users, only: [:edit, :show, :update]
  get 'user/unsubscribe' => 'users#unsubscribe', as: :unsubscribe
  patch 'user/withdraw' => 'users#withdraw'

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  resources :notifications, only: :index

end
