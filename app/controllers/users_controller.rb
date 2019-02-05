class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:user_id])
  end

  def show
    @user = User.find(params[:id])
    @infos = current_user.infos.order('created_at DESC').page(params[:page])
  end
  
  def new
  end
  
  def create
  end
  
  def edit
    @user = User.find_by(params[:user_id])
  end
  
  def update
    @user = User.find_by(params[:user_id])
    if @user.update(user_params)
     flash[:success] = 'You created the profile description successfully!' 
     redirect_to @user
    else
      flash[:danger] = 'Sorry,,, You could not create.'
      render :edit
    end
  end
  
  def destroy
  end
    
  private
  
  def user_params
    params.require(:user).permit(:content)
  end
  
end
