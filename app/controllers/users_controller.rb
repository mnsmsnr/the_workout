class UsersController < ApplicationController
    def show #プロフィール
        @user = User.find(1) #find(params[:id])　仮実装
    end

    def new #新規登録画面遷移
        @user = User.new
    end

    def create #新規登録実行
        @user = User.new(user_params)    # 実装は終わっていないことに注意!
        if @user.save
          # 保存の成功をここで扱う。
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
