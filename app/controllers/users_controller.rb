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
        #【!TODO;新規登録後の画面遷移(プロフィールページ)】
      else
        render 'new'
      end
  end

  private

      def user_params #新規登録用
      params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
      end
end
