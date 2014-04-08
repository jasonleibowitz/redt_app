class User < ActiveRecord::Base

  has_secure_password

  has_many :links
  has_many :comments, through: :links
  has_many :votes, through: :links

end
