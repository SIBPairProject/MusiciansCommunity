class Instruments < ActiveRecord::Base
  attr_accessible :level, :type

  belongs_to :users
end
