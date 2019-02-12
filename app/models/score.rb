class Score < ApplicationRecord
  belongs_to :user
  belongs_to :info
  
  validates :user_id, presence: true
  validates :info_id, presence: true
  validates :score, presence: true
  
  def info_score_ranking
    Score.group(:info_id).order('sum_info_id DESC').limit(10).average(:score)
  end
  
end
