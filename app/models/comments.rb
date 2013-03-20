class Comments < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :body

  belongs_to :users, :weekly_tunes, :user_videos
end
