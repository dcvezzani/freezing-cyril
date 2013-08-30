class NewAndReturningMemberProgress::CheckListItem < ActiveRecord::Base
  attr_accessible :check_list_item_label_id, :date_completed, :new_and_returning_member_progress_id

  belongs_to :new_and_returning_member_progress
  belongs_to :check_list_item_label
end
