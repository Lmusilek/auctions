require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user_subject) { User.new( password: "123456", email: "lukas@gmail.com") }
  
  it "is valid with valid attributes" do
    user = user_subject

    expect(user).to be_valid
  end

  it "is not valid without a password" do
    user = user_subject

    user.password = nil

    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = user_subject

    user.email = nil

    expect(user).to_not be_valid
  end
end
