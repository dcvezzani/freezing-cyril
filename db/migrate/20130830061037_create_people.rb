class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :new_and_returning_member_progress_id
      t.string :name
      t.integer :age
      t.date :baptism_date
      t.date :confirm_date

      t.timestamps
    end
  end
end
