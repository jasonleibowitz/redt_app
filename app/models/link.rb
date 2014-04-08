class Link < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  validates :url, uniqueness: true, presence: true
  validates :title, presence: true

end
