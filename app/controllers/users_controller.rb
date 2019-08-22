class UsersController < ApplicationController
    def new #サインアップ
        @user = User.new
    end

    def show #プロフィール
        @user = User.find(1) #find(params[:id])　仮実装
    end
end
