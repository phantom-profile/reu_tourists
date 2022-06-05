# frozen_string_literal: true

class ApplicationController < ActionController::Base
  EDIT_METHODS = %w[POST PUT PATCH DELETE].freeze

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:firstname, :lastname, :email, :password, :password_confirmation, :token_id)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:firstname, :lastname, :email, :password, :current_password)
    end
  end

  def is_elder?
    head :forbidden unless current_user.is_admin?
  end

end
