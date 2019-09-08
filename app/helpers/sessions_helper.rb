module SessionsHelper
    # ユーザーログイン実行
    def log_in(user)
    session[:user_id] = user.id
    end

    # ログイン中ユーザーを返す (いない場合nil)
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # ログイン状態 true ログアウト状態 false
    def logged_in?
    !current_user.nil?
    end

    # ユーザーログアウト実行
    def log_out
    session.delete(:user_id)
    @current_user = nil
    end

end
