# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family_child, :class => 'Family::Child' do
    new_and_returning_member_progress_id 1
    name { Forgery(:name).first_name }
    age { Forgery(:basic).number({at_most: 21}) }
  end
end
