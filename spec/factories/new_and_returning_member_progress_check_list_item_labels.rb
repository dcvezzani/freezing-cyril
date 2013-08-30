# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress_check_list_item_label, :class => 'NewAndReturningMemberProgress::CheckListItemLabel' do
    name "MyString"
    value "MyText"
  end
end
