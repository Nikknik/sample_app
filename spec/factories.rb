FactoryGirl.define do
  factory :user do
    name     "Nikita"
    email    "nnikitin@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end