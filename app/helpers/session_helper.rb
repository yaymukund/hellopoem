module SessionHelper
  def current_user
    @current_user ||= User.find(session[:current_user_id])
  end

  def logged_in?
    current_user.present?
  end
end
