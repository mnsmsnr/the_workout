class WorkoutsController < ApplicationController
    def index #トレーニング一覧・検索
        @workouts = Workout.paginate(page: params[:page])
    end
    def show #トレーニング詳細
    end
end
