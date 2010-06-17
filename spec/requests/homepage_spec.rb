require 'spec_helper'

context "When I go to the homepage" do
  it 'should display the next meeting if there is one' do
    Meeting.make(:title => 'Past Meeting', :date => 1.week.ago)
    Meeting.make(:title => 'Next Meeting', :date => 1.week.from_now)
    visit root_path
    response.should contain('Next Meeting')
  end

  it 'should display the most recent past meeting if there are no future ones' do
    Meeting.make(:title => 'Old Meeting', :date => 2.weeks.ago)
    Meeting.make(:title => 'Recent Meeting', :date => 1.week.ago)
    visit root_path
    response.should contain('Recent Meeting')
  end

  it 'should not crash when there is no meetings' do
    visit root_path
    response.should be_success
  end
end
