# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress_check_list_item_label, :class => 'NewAndReturningMemberProgress::CheckListItemLabel' do
    name { Forgery(:lorem_ipsum).word }
    value { 
      str = Forgery(:lorem_ipsum).sentences(100) 
      str = str.slice(rand(0..45), str.length)
      pos = str.index(/\./)
      "#{str.slice(0, pos)}."
    }
  end
end
