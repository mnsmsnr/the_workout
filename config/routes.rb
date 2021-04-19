Rails.application.routes.draw do
  
  root 'static_pages#home' #ホーム
  get  'login' => 'sessions#new' #ログイン画面遷移
  post 'login' => 'sessions#create' #ログイン
  delete 'logout' => 'sessions#destroy' #ログアウト
  get  'sighup' => 'users#new' #ユーザー新規登録
  get  'profile' => 'users#show' #プロフィール
  get  'workout_new' => 'workouts#new' #ワークアウト登録画面遷移
  get  'workout' => 'workouts#create' #ワークアウト登録
  post 'workout_new' => 'workouts#create' #ワークアウト登録
  get  'workout_index' => 'workouts#index' #ワークアウト一覧
  post  'workout_index' => 'workouts#index' #ワークアウト一覧
  post  'workout'=> 'workouts#show' #ワークアウト詳細  
  delete 'workout' => 'workouts#destroy' #ワークアウト削除
  resources :workouts
  resources :users
  end
