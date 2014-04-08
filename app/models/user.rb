class User < ActiveRecord::Base

  has_secure_password

  has_many :links
  has_many :comments, through: :links
  has_many :votes, through: :links

  validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 5 }


end
