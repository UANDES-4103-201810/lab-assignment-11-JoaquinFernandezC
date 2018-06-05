require 'rails_helper'

RSpec.describe User, type: :model do
  it "New user" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "User uniqueness" do
    @user = create(:user, username:"jfernandez")
    @user2 = build(:user, username:"jfernandez")
    expect(@user2).to_not be_valid
  end
  it "Email uniqueness" do
    @user = create(:user, email:"jafernandez1@miuandes.cl")
    @user2 = build(:user, email:"jafernandez1@miuandes.cl")
    expect(@user2).to_not be_valid
  end
  it "Long username" do
    @user = create(:user, username:"JoaquinFernandezCastellon")
    expect(@user).to_not be_valid
  end
end
