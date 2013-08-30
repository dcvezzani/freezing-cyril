# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  @base = rand(0..10000)
  sequence :id do |n|
    (@base + n).to_s.rjust(11, "0")
  end

  proper_names = lambda{|count|
    words = Forgery(:lorem_ipsum).text(:words, 100).split(/ +/)
    (0...count).map{|x|
      words.sample.capitalize
    }.join(" ")
  }

  factory :new_and_returning_member_progress do
    ward_branch { proper_names.call(2) }
    stake_district { proper_names.call(2) }
    address { Forgery(:address).street_address }
    phone_number { Forgery(:address).phone }

    factory :new_and_returning_member_progress_with_associations do

      after(:build) do |report, evaluator|
        report.children << FactoryGirl.build_list(:family_child, rand(0...6))
        report.parents << FactoryGirl.build_list(:family_parent, [1,1,2,2,2,2].sample)
        report.ward_council_representatives << FactoryGirl.build_list(:leadership_ward_council_representative, [1,1,2,2,2,2].sample)
        report.home_teachers << FactoryGirl.build_list(:leadership_home_teacher, 2)
        report.visiting_teachers << FactoryGirl.build_list(:leadership_visiting_teacher, 2)
        report.check_list_items << FactoryGirl.build_list(:new_and_returning_member_progress_check_list_item, 10)
      end

    end

  end
end

=begin
FactoryGirl.build(:new_and_returning_member_progress)
FactoryGirl.build(:new_and_returning_member_progress_with_associations)
report = FactoryGirl.create(:new_and_returning_member_progress)
FactoryGirl.create(:new_and_returning_member_progress_with_associations)

NewAndReturningMemberProgress.count
Family::Parent.count

NewAndReturningMemberProgress.destroy_all

FactoryGirl.create_list(:new_and_returning_member_progress_with_associations, 15)

NewAndReturningMemberProgress.all.map(&:ward_branch)
=end

