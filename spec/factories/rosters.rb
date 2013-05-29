# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roster do
    starts_at "2013-05-29 01:02:43"
    ends_at "2013-05-29 01:02:43"
    user nil
    project nil
  end
end
