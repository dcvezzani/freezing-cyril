class Family::Child < Person
  attr_accessible :age, :name, :new_and_returning_member_progress_id

  belongs_to :new_and_returning_member_progress
end
