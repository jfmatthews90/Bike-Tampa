require "rails_helper"

describe User do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end

  it "is not valid" do
    expect(User.new(email: nil)).not_to be_valid
  end
end