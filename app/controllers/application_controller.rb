class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :json

  private

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def not_authorized
    raise ActiveResource::UnauthorizedAccess.new('Not Authorized')
  end

  # Pagination!
  MAX_RECORDS_IN_ONE_REQUEST = 10

  def paginated(resource)
    resource.limit(page_limit).offset(page_offset)
  end

  def page_limit
    if params[:limit].present?
      [params[:limit], MAX_RECORDS_IN_ONE_REQUEST].min
    else
      MAX_RECORDS_IN_ONE_REQUEST
    end
  end

  def page_offset
    params[:offset] || 0
  end
end
