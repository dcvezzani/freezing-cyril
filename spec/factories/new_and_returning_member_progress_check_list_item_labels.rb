# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress_check_list_item_label, :class => 'NewAndReturningMemberProgress::CheckListItemLabel' do
    name { Forgery(:lorem_ipsum).words(100).split(" ")[rand(100)].capitalize }
    value { 
      str = Forgery(:lorem_ipsum).sentences(100) 
      str = str.slice(rand(0..45), str.length)
      pos = str.index(/\./)
      "#{str.slice(0, pos).trim().capitalize}."
    }
  end
end

=begin
FactoryGirl.build(:new_and_returning_member_progress_check_list_item_label)

NewAndReturningMemberProgress::CheckListItem.all.each{|x|
label = FactoryGirl.build(:new_and_returning_member_progress_check_list_item_label)

labels = {
  "int-temple-prep" => "The bishop has interviewed the member and reviewed the principle of tithing and other worthiness matters to assist in preparation for temple worship", 
  "int-aaronic-priesthood" => "Eligible males have been interviewed for and received the Aaronic Priesthood", 
  "gospel-principles" => "The member is enrolled in the Gospel Principles course", 
  "preach-my-gospel" => "Ward and full-time missionaries are reteaching the missionary lessons (as outlined in Preach My Gospel", 
  "church-calling" => "The member has been interviewed for and received a responsibility or calling in the Church", 
  "sacrament-meeting" => "The member is regularly attending sacrament meeting", 
  "family-group-sheet" => "The member has started a family group sheet", 
  "melchizedek-priesthood" => "Eligible and worthy males have been prepared for and received the Melchizedek Priesthood", 
  "temple-proxy-baptisms" => "Members ages 12 and older have participated in proxy baptisms in the temple (where feasible)", 
  "temple-prep" => "Eligible members have completed the temple preparation seminar (see Endowed from on High: Temple Preparation Seminar Teacher's Manual)", 
  "endowed" => "Eligible and worthy adults have been endowed", 
  "temple-sealing" => "The family has been sealed in the temple (if applicable)", 
}

labels.each.with_index{|label, id|
  NewAndReturningMemberProgress::CheckListItemLabel.create!({
    id: id, 
    name: label[0], 
    value: label[1]
  })
}

puts NewAndReturningMemberProgress::CheckListItemLabel.all.map(&:name)
=end
