Rails.application.routes.draw do
  
  root 'static_pages#home' #ホーム
  get 'login' => 'sessions#new' ##ログイン
  get 'sighup' => 'users#new' #新規登録
  get 'profile' => 'users#show' #プロフィール
  get 'workout_index' => 'workouts#index' #ワークアウト検索
  get 'workout_menu' => 'workouts#show' #ワークアウト詳細

  
  resources :workouts
  resources :users
  end
