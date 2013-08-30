# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress_check_list_item, :class => 'NewAndReturningMemberProgress::CheckListItem' do
    new_and_returning_member_progress_id 1
    check_list_item_label_id 1
    date_completed "2013-08-29"
  end
end
