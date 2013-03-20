class UserVideos < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :video_embed, :description

  belongs_to :users
  has_many :comments
end
