module Adminify
  class Users::SessionsController < Devise::SessionsController

    def create
      self.resource = warden.authenticate!(auth_options)
      #self.resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(resource_name, resource)
      respond_with resource, :location => after_sign_in_path_for(resource)
    end

    #def failure
    	#return render :json => {:success => false, :errors => ["Login failed"]}
    #end

    protected

        def after_sign_in_path_for(resource)
          if resource.banned?
            sign_out resource
            flash.delete(:notice)
            flash[:error] = "This account has been suspended."
            root_path
          else
            super
          end
        end

        def serialize_options(resource)
          methods = resource_class.authentication_keys.dup
          methods = methods.keys if methods.is_a?(Hash)
          methods << :password if resource.respond_to?(:password)
          { :methods => methods, :only => [:password] }
        end

        def auth_options
          { :scope => resource_name, :recall => "#{controller_path}#new" }
        end

  end
end