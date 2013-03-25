class Comment < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :user
  belongs_to :weekly_tunes
  belongs_to :user_videos
end
