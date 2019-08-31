Rails.application.routes.draw do
  get 'login' => 'sessions#new' ##ログイン
  get 'sighup' => 'users#new' #新規登録
  get 'workout_index' => 'workouts#index' #ワークアウト検索
  get 'workout_menu' => 'workouts#show' #ワークアウト詳細

  root 'static_pages#home' #ホーム
  resources :users
  end
