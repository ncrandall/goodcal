FactoryGirl.define do
  factory :user do
    email			"foo@bar.com"
    password			"foobar"
    password_confirmation	"foobar"
    phone			"555-555-5555"
    googlecalid			'ncrandall@gmail.com'
  end

  factory :event do
    date	Time.now
    location	"foo"
    title	"bar"
    description	"foobar"
    repeat	false
    all_day	false
    user
  end
end
