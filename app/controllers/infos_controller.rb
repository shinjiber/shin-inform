class InfosController < ApplicationController
  before_action :require_user_logged_in
  
  
  def index
    @infos = Info.all.page(params[:page])
  end
  
  def show
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
  end

  def update
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
