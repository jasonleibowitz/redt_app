require_relative '../spec_helper'

describe User do

  it {should have_many :links }
  it {should have_many(:comments).through :links }
  it {should have_many(:votes).through :links }

  it {should have_secure_password}

end
