class InfoRankingController < ApplicationController
  def index
    info_ranking = Score.group(:score_id).order('sum')
  end
end
