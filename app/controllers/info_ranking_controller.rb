class InfoRankingController < ApplicationController
  def index
    @score_average = Score.average(:score)
  end
end
