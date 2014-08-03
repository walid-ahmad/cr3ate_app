FactoryGirl.define do
  factory :user do
    name     "Me"
    email    "me@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end