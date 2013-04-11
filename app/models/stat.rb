class Stat < ActiveRecord::Base
  attr_accessible :quality, :score, :user_video_id, :user_id, :rater_id

  belongs_to :user
  belongs_to :user_video
end
