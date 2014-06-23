FactoryGirl.define do
  factory :user do
    username "Test User"
    email "test@example.com"
    password "please123"

    trait :admin do
      role 'admin'
    end

  end
end
