# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress_check_list_item, :class => 'NewAndReturningMemberProgress::CheckListItem' do
    date_completed { Forgery(:date).date({past: true}) }
  end
end
