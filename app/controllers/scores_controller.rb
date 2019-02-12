class ScoresController < ApplicationController
  
  def create
    @info = Info.find(params[:info_id])
    @score = current_user.scores.find_or_create_by(info_id: params[:info_id], score: params[:score][:score])
    if @score.save
      flash[:success] = 'Make score!'
      redirect_to root_url
    else
      flash[:danger] = 'You could not make it'
      redirect_to root_url
    end
  end
  
  def destroy
    info = Info.find(params[:info_id])
    current_user.score_off(info)
    flash[:notice] = 'Remove score'
    redirect_to root_url
  end
  
  
end
