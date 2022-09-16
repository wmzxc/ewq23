class ApplicationController < ActionController::Base
    #before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end



    def after_sign_in_path_for(resource)
        root_path 'home#index'# ログイン後に遷移するpathを設定
      end


    def after_sign_out_path_for(resource_or_scope)
        root_path 'home#index'# ←redirect先にしたいpathを自分で書く
      end
end