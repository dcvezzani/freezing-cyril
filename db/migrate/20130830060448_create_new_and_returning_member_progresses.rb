class CreateNewAndReturningMemberProgresses < ActiveRecord::Migration
  def change
    create_table :new_and_returning_member_progresses do |t|
      t.string :ward_branch
      t.string :stake_district
      t.text :address
      t.string :phone_number

      t.timestamps
    end
  end
end
