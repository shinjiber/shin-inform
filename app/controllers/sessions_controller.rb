class SessionsController < ApplicationController
  
    def create
        user = User.find_or_create_from_auth(request.env['omniauth.auth'])
        session[:user_id] = user.uid
        flash[:notice] = "You logged in successfully!!"
        redirect_to root_path
    end

    def destroy
        reset_session
        flash[:notice] = "You logged out!"
        redirect_to root_path
    end
    
end
