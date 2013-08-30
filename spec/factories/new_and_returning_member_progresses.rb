# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_and_returning_member_progress do
    ward_branch { Forgery(:lorem_ipsum).text(:words, 2) }
    stake_district { Forgery(:lorem_ipsum).text(:words, 2) }
    address { Forgery(:address).street_address }
    phone_number { Forgery(:address).phone }

    factory :new_and_returning_member_progress_with_associations do

      after(:build) do |report, evaluator|
        report.children << FactoryGirl.build_list(:family_child, 2)
        report.parents << FactoryGirl.build_list(:family_parent, 2)
        report.ward_council_representatives << FactoryGirl.build_list(:leadership_ward_council_representative, 2)
        report.home_teachers << FactoryGirl.build_list(:leadership_home_teacher, 2)
        report.visiting_teachers << FactoryGirl.build_list(:leadership_visiting_teacher, 2)
        report.check_list_items << FactoryGirl.build_list(:new_and_returning_member_progress_check_list_item, 10)
      end

    end

  end
end
