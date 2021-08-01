Rails.application.routes.draw do
  root 'static_pages#home' #ホーム画面
  get  'login' => 'sessions#new' #ログイン画面
  post 'login' => 'sessions#create' #ログイン実行
  delete 'logout' => 'sessions#destroy' #ログアウト実行
  get  'sighup' => 'users#new' #ユーザー新規登録画面
  get  'user_edit' => 'users#edit' #ユーザー編集実行
  get  'profile' => 'users#show' #ユーザ詳細画面
  get  'workout_new' => 'workouts#new' #ワークアウト登録画面
  post 'workout_new' => 'workouts#create' #ワークアウト登録実行
  get  'workout_index' => 'workouts#index' #ワークアウト一覧画面
  get  'workout'=> 'workouts#show' #ワークアウト詳細画面
  post  'workout'=> 'workouts#edit' #ワークアウト編集画面
  patch 'workout' => 'workouts#update' #ワークアウト更新実行
  delete 'workout' => 'workouts#destroy' #ワークアウト削除実行
  resources :workouts
  resources :users
  end
