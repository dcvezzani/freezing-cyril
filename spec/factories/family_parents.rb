# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family_parent, :class => 'Family::Parent' do
    new_and_returning_member_progress_id 1
    name { Forgery(:name).first_name }
    baptism_date { Forgery(:date).date({past: true}) }
    confirm_date { Forgery(:date).date({past: true}) }
  end
end
