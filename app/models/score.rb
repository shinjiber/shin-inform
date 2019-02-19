class Score < ApplicationRecord
  belongs_to :user
  belongs_to :info
  
  validates :user_id, presence: true
  validates :info_id, presence: true
  validates :score, presence: true
  
  
end
