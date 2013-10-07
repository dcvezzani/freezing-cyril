class NewAndReturningMemberProgress < ActiveRecord::Base
  attr_accessible :address, :phone_number, :stake_district, :ward_branch

  has_many :parents, class_name: 'Family::Parent', dependent: :destroy
  has_many :children, class_name: 'Family::Child', dependent: :destroy
  has_many :ward_council_representatives, class_name: 'Leadership::WardCouncilRepresentative', dependent: :destroy
  has_many :home_teachers, class_name: 'Leadership::HomeTeacher', dependent: :destroy
  has_many :visiting_teachers, class_name: 'Leadership::VisitingTeacher', dependent: :destroy

  has_many :check_list_items, dependent: :destroy, order: :check_list_item_label_id

  def check_list_item_for(label)
    check_list_items.joins(:check_list_item_label).where(['new_and_returning_member_progress_check_list_item_labels.name = ?', label])
  end

  def date_completed_for(label)
    fnd = check_list_items.joins(:check_list_item_label).where(['new_and_returning_member_progress_check_list_item_labels.name = ?', label]).select('date_completed').first
    fnd.date_completed.strftime("%m/%d/%Y")
  end

  def member_or_couple
    parents.map(&:name).join(" & ")
  end

  def baptism_dates
    parents.map{|parent| parent.baptism_date.strftime("%m/%d/%Y") }.join(", ")
  end

  def confirmation_dates
    parents.map{|parent| parent.confirm_date.strftime("%m/%d/%Y") }.join(", ")
  end

  def children_names_with_ages
    children.map{|child| "#{child.name} (#{child.age})" }.join(", ")
  end

  def ward_council_representative_names
    ward_council_representatives.map(&:name).join(", ")
  end

  def home_teacher_names
    home_teachers.map(&:name).join(", ")
  end

  def visiting_teacher_names
    visiting_teachers.map(&:name).join(", ")
  end
end
