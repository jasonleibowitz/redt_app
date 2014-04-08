require_relative '../spec_helper'

describe Link do

  it { should have_many :votes }
  it { should belong_to :user }

end
