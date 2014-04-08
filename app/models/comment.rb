class Comment < ActiveRecord::Base

  belongs_to :link
  has_one :user, through: :link

end
