# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leadership_home_teacher, :class => 'Leadership::HomeTeacher' do
    new_and_returning_member_progress_id 1
    name { Forgery(:name).first_name }
  end
end
