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
        #report.parents << FactoryGirl.build_list(:family_parent, [1,1,2,2,2,2].sample)
        parents_status = %w{d m m b b b b b}.sample
        fathers_name = lambda{Forgery(:name).male_first_name}.call
        mothers_name = lambda{Forgery(:name).female_first_name}.call
        last_name = lambda{Forgery(:name).last_name}.call

        case(parents_status)
        when 'd'
          report.parents << FactoryGirl.build(:family_parent, name: "#{fathers_name} #{last_name}")
        when 'm'
          report.parents << FactoryGirl.build(:family_parent, name: "#{mothers_name} #{last_name}")
        else
          report.parents << FactoryGirl.build(:family_parent, name: "#{fathers_name} #{last_name}")
          report.parents << FactoryGirl.build(:family_parent, name: "#{mothers_name} #{last_name}")
        end
        
        report.ward_council_representatives << FactoryGirl.build_list(:leadership_ward_council_representative, [1,1,2,2,2,2].sample)
        report.home_teachers << FactoryGirl.build_list(:leadership_home_teacher, 2)
        report.visiting_teachers << FactoryGirl.build_list(:leadership_visiting_teacher, 2)
        (1..12).each{|clilid|
          report.check_list_items << FactoryGirl.build(:new_and_returning_member_progress_check_list_item, check_list_item_label_id: clilid)
        }
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


NewAndReturningMemberProgress.first.check_list_items.map(&:check_list_item_label)
NewAndReturningMemberProgress.first.check_list_items.map{|x| x.check_list_item_label.name }
=end

