FactoryGirl.define do
  sequence(:email) { |n| "test#{n}@test.com" }
  factory :user do
    email
    password 'asdasdasd'
    first_name 'Testy'
    last_name 'Tester'
    admin false
  end

  factory :admin, parent: :user do
    id
    admin true
  end
end