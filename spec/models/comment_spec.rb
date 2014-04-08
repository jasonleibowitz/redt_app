require_relative '../spec_helper'

describe Comment do

  it { should belong_to :link }
  it { should have_one(:user), through: :link }

end
