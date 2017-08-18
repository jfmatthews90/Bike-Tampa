FactoryGirl.define do
  sequence(:id) { |n| "#{n}" }

  factory :product do
    id
    name "spec product"
    description "product description"
    price 100
    colour "red"
  end
end