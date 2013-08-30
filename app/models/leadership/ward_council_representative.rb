class Leadership::WardCouncilRepresentative < Person
  attr_accessible :name, :new_and_returning_member_progress_id

  belongs_to :new_and_returning_member_progress
end
