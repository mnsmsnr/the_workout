Rails.application.routes.draw do
  root 'static_pages#home' #ルートパス
  resources :users
  end
