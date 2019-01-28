class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :notice => exception.message
  end

  def after_sign_in_path_for(resource)
    if resource.Admin?
      admin_users_path
    else
      root_url   
    end
  end
end
