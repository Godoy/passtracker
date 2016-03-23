FactoryGirl.define do
  factory :project do
    name Faker::App.name
    association :client
  end
end
