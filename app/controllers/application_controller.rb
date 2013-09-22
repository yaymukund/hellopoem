class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  # Pagination!

  def paginated(resource)
    resource.limit(page_limit).offset(page_offset)
  end

  def page_limit
    params[:limit] || 10
  end

  def page_offset
    params[:offset] || 0
  end
end
