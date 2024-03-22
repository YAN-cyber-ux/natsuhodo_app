module SessionsHelper

  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      # @current_userがnilかfalseならUser.find_by
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
