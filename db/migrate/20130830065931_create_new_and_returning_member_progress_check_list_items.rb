class CreateNewAndReturningMemberProgressCheckListItems < ActiveRecord::Migration
  def change
    create_table :new_and_returning_member_progress_check_list_items do |t|
      t.integer :new_and_returning_member_progress_id
      t.integer :check_list_item_label_id
      t.date :date_completed

      t.timestamps
    end
  end
end
