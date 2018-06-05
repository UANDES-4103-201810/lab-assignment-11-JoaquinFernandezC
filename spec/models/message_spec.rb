require 'rails_helper'

RSpec.describe Message, type: :model do
  it "New message" do
    @message = create(:message)
    expect(@message).to be_valid
  end
  it "User null" do
    @message = create(:message, user_id: nil)
    expect(@message).to_not be_valid
  end
  it "User existence" do
    @message = create(:message, user_id: -1)
    expect(@message).to_not be_valid
  end
end