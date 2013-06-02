FactoryGirl.define do
  factory :user do
    sequence(:email) { |i| "email#{i}@test.com" }
    password 'changeme'
    password_confirmation 'changeme'
    name 'Claudia Farias'
    company
	end
end
