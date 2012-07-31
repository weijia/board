# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    title "MyString"
    description "MyString"
    content "MyText"
    creator_id 1
    owner_id 1
    project_id 1
  end
end
