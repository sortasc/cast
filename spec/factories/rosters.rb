# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roster do
    starts_at "2013-05-29 09:00:00"
    ends_at "2013-05-29 20:00:00"
    user
    project
  end
end
