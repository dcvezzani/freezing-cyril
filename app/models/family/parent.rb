class Family::Parent < Person
  attr_accessible :baptism_date, :confirm_date, :name, :new_and_returning_member_progress_id

  belongs_to :new_and_returning_member_progress
end
