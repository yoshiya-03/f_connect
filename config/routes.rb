Rails.application.routes.draw do

  get 'users/show'
  devise_for :users
  get 'homes/top'
  get 'homes/about'
  root 'homes#top'
  get 'creators/designer'
  get 'creators/stylist'
  get 'creators/hairmake'
  get 'creators/photographer'
  resources :posts
  resources :users, only: [:edit, :show, :update]
  get 'user/unsubscribe' => 'users#unsubscribe', as: :unsubscribe
  patch 'user/withdraw' => 'users#withdraw'


end
