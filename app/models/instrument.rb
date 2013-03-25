class Instrument < ActiveRecord::Base
  attr_accessible :level, :type

  belongs_to :users
end
