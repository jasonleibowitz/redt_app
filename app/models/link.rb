class Link < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  validates :url, uniqueness: true, presence: true
  validates :title, presence: true

  def voted?(current_user)
    votes_array = []
    current_user.votes.each do |vote|
      if vote.link_id == self.id
        votes_array << vote
      end
    end
    if votes_array.empty?
      return false
    else
      return votes_array.first
    end
  end

  def vote_value(current_user)
    vote = self.voted?(current_user)
    value = vote.vote
    return value
  end

end
