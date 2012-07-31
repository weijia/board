# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    ticket_id 1
    content "MyText"
    creator_id 1
  end
end
