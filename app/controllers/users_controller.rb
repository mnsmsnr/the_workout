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
    if @user.authenticate(params[:user][:password_before])
      logger.debug("log:現在のパスワード認証OK")
      @user.update(user_params)
    end
  end

  private

      def user_params #新規登録用
        # 【!TODO】:emailをユニーク判定
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
      def update_params #更新用
        # 【!TODO】:emailをユニーク判定
        params.require(:user).permit(:name, :email)
      end
end
