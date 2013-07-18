# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    origin "MyString"
    destination "MyString"
    activity "MyString"
    passenger "MyString"
    value ""
    observation "MyString"
  end
end
