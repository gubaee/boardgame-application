class ApplicationController < ActionController::Base

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?
  helper_method :admin?
  helper_method :list_online_users

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def admin?
    user_id = User.find_by(id: session[:user_id])
    user_id.username == "gubaee"
  end

  def authorized
    redirect_to '/welcome' unless logged_in?
  end

  def list_online_users
    @users ||= User.where(online: true)
  end
end
