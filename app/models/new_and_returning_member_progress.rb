class NewAndReturningMemberProgress < ActiveRecord::Base
  attr_accessible :address, :phone_number, :stake_district, :ward_branch

  has_many :parents
  has_many :children
  has_many :ward_council_representatives
  has_many :home_teachers
  has_many :visiting_teachers

  has_many :check_list_items
end
