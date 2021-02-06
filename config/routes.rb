Rails.application.routes.draw do

  devise_for :users
  
  root 'homes#top'
  get 'homes/top'
  get 'homes/about'
  get 'creators/designer'
  get 'creators/stylist'
  get 'creators/hairmake'
  get 'creators/photographer'
  
  resources :posts
  
  resources :users, only: [:edit, :show, :update]
  get 'user/unsubscribe' => 'users#unsubscribe', as: :unsubscribe
  patch 'user/withdraw' => 'users#withdraw'


end
