class UserVideo < ActiveRecord::Base
  attr_accessible :description, :title, :video_embed

  belongs_to :user
  has_many :comments
end
