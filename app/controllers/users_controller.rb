class UsersController < ApplicationController
  def show #プロフィール
      @user = User.find(current_user.id)
  end

  def new #新規登録画面遷移
      @user = User.new
  end

  def create #新規登録実行
      @user = User.new(user_params) 
      if @user.save
        log_in @user
        redirect_to @user
      else
        render 'new'
      end
  end

  def edit #プロフィール更新画面遷移
      @user = User.find(current_user.id)
  end

  def update #プロフィール更新
    @user = User.find(current_user.id)
    # 【TODO!】要リファクタ
    if @user.authenticate(params[:user][:password_before])
      logger.debug("log:現在のパスワード認証OK")
      if params[:user][:password].empty? and params[:user][:password_confirmation].empty?
        logger.debug('log:パスワード変更なし')
        @update_params = user_params
        @update_params[:password] = params[:user][:password_before]
        @update_params[:password_confirmation] = params[:user][:password_before]
        if @user.update(@update_params)
          redirect_to @user ,fallback_location: root_path, notice: COMPLETED
        end
      else
        if @user.update(user_params)
          logger.debug("log:varid-OK")
          redirect_to @user ,fallback_location: root_path, notice: COMPLETED
        else
          logger.debug("log:varid-NG")
          render 'edit'
        end
      end
    else
      logger.debug("log:現在のパスワード認証NG")
      redirect_to edit_user_url ,fallback_location: root_path, notice: PASSWORD_UPDATE_AUTHENTICATION
    end
  end

  def updatenew #プロフィール更新
    @user = User.find(current_user.id)
    if params[:user][:password].empty?

      @user.update(user_params)

    end
  end

  private

      def user_params #新規登録用
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :password_before)
      end
      def update_params #パスワード以外更新用
        params.permit(:name, :email, :password_confirmation, :password_before)
      end
end
