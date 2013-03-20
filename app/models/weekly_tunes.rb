class WeeklyTunes < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :genre, :artist, :date_from, :date_to, :description

  has_many :comments
end
