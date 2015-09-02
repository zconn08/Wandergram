class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_in_user!(user)
    session_token = Session.generate_session_token
    user.sessions.create!(session_token: session_token)
    session[:session_token] = session_token
  end

  def log_out_user!
    @current_user = nil
    session_token = session[:session_token]
    Session.find_by_session_token(session_token).destroy!
    session[:session_token] = nil;
  end

  def require_login
    redirect_to landing_page_url unless logged_in?
  end

  def require_logged_out
    redirect_to root_url if logged_in?
  end

end
