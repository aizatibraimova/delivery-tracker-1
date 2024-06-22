class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_forgery_protection

  private

  def authenticate_user_with_alert!
    unless current_user
      flash[:alert] = "You need to sign in or sign up before continuing."
      redirect_to new_user_session_path
    end
  end
end
