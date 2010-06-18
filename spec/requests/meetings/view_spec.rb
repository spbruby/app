require 'spec_helper'

context "When I go to the meetings archive" do
  it 'should contain past meetings' do
    Meeting.make(:title => 'Something in the future', :date => 1.week.from_now)
    Meeting.make(:title => 'Something in the past', :date => 1.week.ago)
    visit meetings_path
    response.should contain('Something in the past')
    response.should_not contain('Something in the future')
  end

  it 'should allow to view meeting details' do
    Meeting.make(:title => 'Something in the past', :date => 1.week.ago)
    visit meetings_path
    click_link 'Подробнее'
    response.should contain('Something in the past')
  end
end
