# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leadership_visiting_teacher, :class => 'Leadership::VisitingTeacher' do
    new_and_returning_member_progress_id 1
    name { "#{Forgery(:name).female_first_name} #{Forgery(:name).last_name}" }
  end
end
