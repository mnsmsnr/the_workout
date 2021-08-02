class SessionsController < ApplicationController
  def new #ログイン画面遷移
  end

  def create #ログイン 
    user = User.find_by(email: params[:sessions][:email].downcase) #【!TODO:なぜsessions?s外したい】
    if user && user.authenticate(params[:sessions][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      redirect_to root_url
    else #ログインエラー
      redirect_to login_url ,fallback_location: root_path, notice: LOGIN_AUTHENTICATION
    end
  end

  def destroy #ログアウト
    log_out
    redirect_to root_url
  end
end
