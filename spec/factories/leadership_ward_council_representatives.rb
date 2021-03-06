# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leadership_ward_council_representative, :class => 'Leadership::WardCouncilRepresentative' do
    new_and_returning_member_progress_id 1
    name { "#{Forgery(:name).first_name} #{Forgery(:name).last_name}" }
  end
end
