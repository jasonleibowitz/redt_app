require_relative '../spec_helper'

describe User do

  it {should have_many :links }
  it {should have_many(:comments).through :links }
  it {should have_many(:votes).through :links }

  it {should have_secure_password}

  it {should validate_presence_of :first_name}
  it {should validate_presence_of :last_name}
  it {should validate_presence_of :email}
  it {should validate_presence_of :password}
  it {should validate_presence_of :password_confirmation}
  it {should ensure_length_of(:password).is_at_least(5)}

  it {should validate_confirmation_of :password}

end
