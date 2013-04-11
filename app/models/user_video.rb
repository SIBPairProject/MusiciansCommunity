class UserVideo < ActiveRecord::Base
  attr_accessible :description, :title, :video_embed, :user_id, :weekly_tune_id

  belongs_to :user
  belongs_to :weekly_tune
  has_many :comments
  has_many :stats
end
