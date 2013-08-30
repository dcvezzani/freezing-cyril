# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress do
    ward_branch "MyString"
    stake_district "MyString"
    address "MyText"
    phone_number "MyString"
  end
end
