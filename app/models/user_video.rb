class UserVideo < ActiveRecord::Base
  attr_accessible :description, :title, :video_embed, :user_id

  belongs_to :user
  has_many :comments
end
