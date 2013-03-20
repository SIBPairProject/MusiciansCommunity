class User < ActiveRecord::Base
  attr_accessible :about, :email, :name, :password

  has_many :instruments
  has_many :comments
end
