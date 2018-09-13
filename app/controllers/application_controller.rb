class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def user_redirection_url
    if current_user.survey_admin?
      survey_admin_dashboard_url(current_user)
    elsif current_user.survey_taker?
      survey_taker_dashboard_url(current_user)
    else 
      root_url
    end
  end
end
