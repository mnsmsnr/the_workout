class WorkoutsController < ApplicationController

  def index
    # 検索オブジェクト
    @search = Workout.ransack(params[:q])
    # 検索結果
    @searchResults = @search.result
  end
  
  def show #トレーニング詳細
    logger.debug("log:トレーニング詳細画面遷移")
    @workout = Workout.find_by(id: params[:format])
    @purpose = Purpose.find_by(id: @workout.purpose)
    @environment = Environment.find_by(id: @workout.environment)
    @target = Target.find_by(id: @workout.target)
  end

  def new #新規登録画面遷移
    logger.debug("log:トレーニング新規登録画面遷移")
    @workout = Workout.new
  end

  def create #新規登録実行
    logger.debug("log:トレーニング新規登録実行")
    @workout = Workout.new(new_params) 
    @workout.user_id = current_user.id
    #埋め込み用URLへ加工のため動画IDのみ取得
    url = params[:workout][:video_id]
    @workout.video_id = url.last(11)
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

  def edit #ワークアウト更新画面遷移
    @workout = Workout.find_by(id: params[:format])
  end

  def update #ワークアウト更新
    logger.debug("log:ワークアウト更新実行")
    @workout = Workout.find_by(params[:id])
    @workout.update(new_params)
    #【!TODO】埋め込み用URLへ加工のため動画IDのみ取得
    url = params[:workout][:video_id]
    @workout.video_id = url.last(11)
    @workout.save
  end

    private

      def new_params #新規登録用
        params.require(:workout).permit(:menu, :purpose, :environment, :target, :image, :video_id)
      end
end
