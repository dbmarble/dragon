# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meeting do
    title "MyString"
    logo_url "MyString"
    reason "MyText"
    location "MyString"
    date "2012-05-09"
    start_time "2012-05-09 09:51:51"
    end_time "2012-05-09 09:51:51"
    user_id 1
  end
end
