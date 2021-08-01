class WorkoutsController < ApplicationController
  # 検索オブジェク(条件保持用)
  @@search　= nil;
  # 検索画面遷移元判定
  @@show_backlog = false;

  def index #検索画面遷移・検索実行

    # 初回遷移・検索実行
    if @@show_backlog == false
      # 検索オブジェクト
      @search = Workout.ransack(params[:q])
      # 検索オブジェク(条件保持用)
      @@search = @search
      # 検索結果
      @searchResults = @search.result
    # 詳細画面・編集画面から遷移
    else
      @search = @@search
      @searchResults = @@search.result
      @@show_backlog = false
    end
  end
  
  def show #トレーニング詳細画面遷移
    logger.debug("log:トレーニング詳細画面遷移")
    @workout = Workout.find_by(id: params[:format])
    @purpose = Purpose.find_by(id: @workout.purpose)
    @environment = Environment.find_by(id: @workout.environment)
    @target = Target.find_by(id: @workout.target)
    # 検索画面遷移時の条件保持フラグ
    @@show_backlog = true
  end

  def new #新規登録画面遷移
    logger.debug("log:トレーニング新規登録画面遷移")
    @workout = Workout.new
  end

  def create #新規登録実行
    logger.debug("log:トレーニング新規登録実行")
    @workout = Workout.new(new_update_params) 
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
    @workout = Workout.find_by(id: params.require(:workout)[:id])
    @workout.update(new_update_params)
    #埋め込み用URLへ加工のため動画IDのみ取得
    url = params[:workout][:video_id]
    @workout.update(video_id: url.last(11))
    redirect_to @workout ,fallback_location: root_path, notice: 'Update completed!'
  end

    private

      def new_update_params 
        params.require(:workout).permit(:menu, :purpose, :environment, :target, :image, :video_id)
      end
end
