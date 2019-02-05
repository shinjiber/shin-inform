class InfosController < ApplicationController
  before_action :require_user_logged_in
  
  
  def index
    @infos = current_user.infos.order('created_at DESC').page(params[:page])
  end
  
  def show
    @info = current_user.infos.find(params[:id])
  end

  def new
    @info = current_user.infos.build
  end

  def create
    @info = current_user.infos.build(info_params)
    if @info.save
      flash[:success] = 'Posted info successfully'
      redirect_to infos_url
    else
      @info = current_user.infos.order('created_at DESC').page(params[:page])
      flash[:danger] = 'Posted unsuccessfully'
      render 'infos/index'
    end
  end
  
  def edit
    @info = current_user.infos.find(params[:id])
  end

  def update
    @info = current_user.infos.find(params[:id])
    
    if @info.update(info_params)
      flash[:success] = 'Updated successfully'
      redirect_to @info
    else
      flash.now[:danger] = 'Could not update!'
      render :edit
    end
  end
  
  def destroy
    @info.destroy
    flash[:success] = 'Deleted the info!'
    redirect_back(fallback_location: root_path)
  end
  
  
  
  private
  
  def info_params
    params.require(:info).permit(:title, :content)
  end
  
 
end
