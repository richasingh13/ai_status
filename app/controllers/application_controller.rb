class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_users_path
    else
      root_url   
    end
  end


  layout :determine_layout

  def determine_layout
    module_name = self.class.to_s.split("::").first
    return (module_name.eql?("Devise") ? "devise_user" : "application")
  end
end
