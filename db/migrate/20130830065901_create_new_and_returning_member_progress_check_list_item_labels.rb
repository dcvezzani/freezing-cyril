class CreateNewAndReturningMemberProgressCheckListItemLabels < ActiveRecord::Migration
  def change
    create_table :new_and_returning_member_progress_check_list_item_labels do |t|
      t.string :name
      t.text :value

      t.timestamps
    end
  end
end
