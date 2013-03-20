class Comments < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :users, :weekly_tunes, :user_videos
end
