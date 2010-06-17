require 'machinist/active_record'
require 'sham'
require 'faker'

Rspec.configure do |config|
  config.before(:all)    { Sham.reset(:before_all)  }
  config.before(:each)   { Sham.reset(:before_each) }
end

Meeting.blueprint do
  date        { 1.week.from_now }
  title       { Faker::Lorem.words(5).join(' ') }
  description { Faker::Lorem.paragraphs(3).join("\n\n")  }
end
