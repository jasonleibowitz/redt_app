require_relative '../spec_helper'

describe Comment do

  it { should belong_to :link }
  it { should have_one(:user), through: :link }

  it {should validate_presence_of :content}
  it {should validate_presence_of :user_id}

end
