class NewAndReturningMemberProgress < ActiveRecord::Base
  attr_accessible :address, :phone_number, :stake_district, :ward_branch

  has_many :parents, class_name: 'Family::Parent'
  has_many :children, class_name: 'Family::Child'
  has_many :ward_council_representatives, class_name: 'Leadership::WardCouncilRepresentative'
  has_many :home_teachers, class_name: 'Leadership::HomeTeacher'
  has_many :visiting_teachers, class_name: 'Leadership::VisitingTeacher'

  has_many :check_list_items
end
