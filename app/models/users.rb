class Users < ActiveRecord::Base
  attr_accessible :about, :email, :name, :password

  has_many :instruments, :comments
end
