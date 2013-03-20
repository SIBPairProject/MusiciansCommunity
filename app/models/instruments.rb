class Instruments < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :type, :level

  belongs_to :users
end
