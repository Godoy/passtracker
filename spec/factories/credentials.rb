FactoryGirl.define do
  factory :credential do
    name Faker::App.name
    host Faker::Internet.url
    port 27
    user Faker::Internet.user_name
    password Faker::Internet.password
    association :project
    association :client
    association :credential_type
  end
end
