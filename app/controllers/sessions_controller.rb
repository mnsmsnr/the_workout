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
      flash.now[:danger] = 'Invalid email/password combination' #flash未対応【!TODO:toastrで対応したい】
      render 'new'
    end
  end

  def destroy #ログアウト
    log_out
    redirect_to root_url
  end
end
