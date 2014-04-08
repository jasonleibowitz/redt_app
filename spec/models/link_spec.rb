require_relative '../spec_helper'

describe Link do

  it { should have_many :votes }
  it { should belong_to :user }

  it { should validate_uniqueness_of :url }
  it { should validate_presence_of :url }
  it { should validate_presence_of :title }

end
