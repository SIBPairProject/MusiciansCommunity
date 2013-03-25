class WeeklyTune < ActiveRecord::Base
  attr_accessible :artist, :date_from, :date_to, :description, :genre, :title

  belongs_to :user
  has_many :comments
end
