class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name agreement])
  end

  private

  def auth_user
    return if current_user
    flash[:danger] = '投稿するにはログインが必要です。'
    redirect_to new_user_registration_path
    # TODO: 人気の投稿一覧画面ができたらリダイレクト先変更
  end
end
