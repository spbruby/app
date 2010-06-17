require 'spec_helper'

describe Meeting do
  context 'when returning current meeting' do
    it 'should return the nearest future one' do
      Meeting.make(:date => 2.weeks.from_now)
      Meeting.make(:date => 2.weeks.ago)
      c = Meeting.make(:date => 1.week.from_now)
      Meeting.current.should == c
    end

    it 'should the most recent past one if there are no future meetings' do
      Meeting.make(:date => 2.weeks.ago)
      c =Meeting.make(:date => 1.weeks.ago)
      Meeting.current.should == c
    end
  end
end
