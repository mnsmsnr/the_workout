class UsersController < ApplicationController
    def new #サインアップ
        @user = User.new
    end
end
