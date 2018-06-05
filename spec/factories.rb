FactoryBot.define do
  factory :user do
    username "default user"
    email "user@default.com"
    password "default.123"
  end
  factory :message do
    user_id 0
    date Date.today()
    content "Message default"
  end
end