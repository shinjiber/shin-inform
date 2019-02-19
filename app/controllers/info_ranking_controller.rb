class InfoRankingController < ApplicationController
  def index
    @infos_ranking = Score.group(:info_id).average(:score).sort{|(a, b), (c, d)| d <=> b }.first(10)
  end
end
