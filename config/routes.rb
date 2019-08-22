Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  get 'sighup' => 'users#new'
  get 'training_index' => 'trainings#index'
  get 'training' => 'trainings#show'

  root 'static_pages#home' #ルートパス
  resources :users
  end
