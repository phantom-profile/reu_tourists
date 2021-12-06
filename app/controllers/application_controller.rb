class ApplicationController < ActionController::Base

  EDIT_METHODS = %w[POST PUT PATCH DELETE]

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :update_allowed_parameters, if: :devise_controller?
  before_action :statistic_counting, unless: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :nickname, :email, :password, :password_confirmation, :secret) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password) }
  end

  def is_elder?
    head :forbidden unless current_user.is_elder?
  end

  def statistic_counting
    if request.method == "GET"
      current_user.viewed_pages += 1
    elsif request.method.in?(EDIT_METHODS)
      current_user.edited_resources += 1
    end

    current_user.save
  end
end
