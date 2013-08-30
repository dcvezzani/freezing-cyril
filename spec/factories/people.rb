# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    new_and_returning_member_progress_id 1
    name "MyString"
    age 1
    baptism_date "2013-08-29"
    confirm_date "2013-08-29"
  end
end
