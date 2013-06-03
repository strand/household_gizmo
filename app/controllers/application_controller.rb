class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_access

  protected
  def check_access
    return if request.env['PATH_INFO'] == new_member_registration_path ||
              request.env['PATH_INFO'] == member_session_path
    redirect_to member_session_path and return unless member_signed_in?
  end
end
