class Users < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :email, :password, :about

  has_many :instruments, :comments
end
