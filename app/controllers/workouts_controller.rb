class WorkoutsController < ApplicationController
    def index #トレーニング一覧検索画面
      logger.debug("log:トレーニング一覧検索画面遷移")
      # @workouts = Workout.search(params[:menu]).paginate(page: params[:page])
      @workouts = Workout.search(search_params)
    end
    def show #トレーニング詳細
      logger.debug("log:トレーニング詳細画面遷移")
      @workout = Workout.find_by(id: params[:format])
    end
    def new #新規登録画面遷移
      logger.debug("log:トレーニング新規登録画面遷移")
      @workout = Workout.new
    end
    def create #新規登録実行
      logger.debug("log:トレーニング新規登録実行")
      @workout = Workout.new(new_params) 
      if @workout.save
        redirect_to workout_index_url #【TODO!:詳細画面に飛ぶように要修正】
      else
        render 'new'
      end
    end
    def destroy #トレーニング削除
      logger.debug("log:トレーニング削除実行")
      @workout = Workout.find_by(id: params[:format])
      @workout.destroy
      redirect_to workout_index_url
    end

    private

      def new_params #新規登録用
        params.require(:workout).permit(:menu, :purpose, :environment, :target)
      end

      def search_params #検索用
        params[:workout_index => [:menu, :purpose, :environment, :target]]
      end
end
