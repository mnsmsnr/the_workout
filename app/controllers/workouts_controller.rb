class WorkoutsController < ApplicationController
    def index #トレーニング一覧・検索
        @workouts = Workout.paginate(page: params[:page])
    end
    def show #トレーニング詳細
        @workout = Workout.find(1) #find(params[:id])　仮実装
        @micropost = Micropost.find(1) #find(params[:id])　仮実装
    end
end
