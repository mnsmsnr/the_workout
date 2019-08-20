Rails.application.routes.draw do
  get 'login' => 'sessions#new'

  root 'static_pages#home' #ルートパス
  resources :users
  end
