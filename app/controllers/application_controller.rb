class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize
  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice:"Cannot do it"
    end
    end
  def current_user
  User.where(id: session[:user_id]).first

  end
  helper_method :current_user
end
